package com.oautexample.oautexample.configuration;


import javax.sql.DataSource;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.Primary;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.error.OAuth2AccessDeniedHandler;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.InMemoryTokenStore;
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;

@Configuration
@EnableAuthorizationServer
@EnableGlobalMethodSecurity(prePostEnabled=true)
@Import(ServerSecurityConfig.class)
public class AuthServerOauth2Config extends AuthorizationServerConfigurerAdapter{
	
	/**Token Store en memoria. ¿limitantes de almacenamiento?**/
//	private TokenStore tokenStore = new InMemoryTokenStore( );

	@Autowired
	@Qualifier("dataSource")
	private DataSource dataSource;
	
	@Autowired
	private AuthenticationManager authentificationManager;
	
	@Autowired
	private UserDetailsService userDetailService;
	
	@Autowired
	private PasswordEncoder oauthClientPasswordEncoder;
	
	/**Token Store en base de datos. Se necesita tener la estructura en la base de datos, no hay limite de memoria, se puede controlar 
	la expiración del token.**/
	@Bean
	public TokenStore tokenStore() {
		return new JdbcTokenStore(dataSource);
	}
	
	@Bean
	public OAuth2AccessDeniedHandler oauthAccessDeniedHandler() {
		return new OAuth2AccessDeniedHandler();
	}
	
	Logger logger = Logger.getLogger(AuthServerOauth2Config.class);

	@Override
	public void configure(AuthorizationServerSecurityConfigurer oauthServer) throws Exception {
//		logger.info("PASSWORD oauthClientPasswordEncoder admin = " + oauthClientPasswordEncoder.encode("admin1234"));
		oauthServer.tokenKeyAccess("permitAll()")
					.checkTokenAccess("isAuthenticated()")
					.passwordEncoder(oauthClientPasswordEncoder);
	}

	@Override
	public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
//		logger.info("SECRET oauthClientPasswordEncoder  =" + oauthClientPasswordEncoder.encode("B34D99FAE1"));
		clients
		.inMemory( )
		.withClient( "integrationpass" )
		.authorizedGrantTypes( "password", "refresh_token" )
		.authorities( "USER" )
		.scopes( "read", "write" )
		.resourceIds( "resource-server-rest-api" )
		.secret( oauthClientPasswordEncoder.encode("B34D99FAE1") );
		//.accessTokenValiditySeconds(30);//Tiempo de expiración de token por cada cliente.
	}

	@Override
	public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
//		endpoints.tokenStore(this.tokenStore)
		endpoints.tokenStore(tokenStore())
				.tokenServices(tokenServices())	/**Es necesario de indicar si la implementacion es por medio de TokenStoreJDBC, si es en memoria
												solo basta con declarar el bean**/
				.authenticationManager(authentificationManager)
				.userDetailsService(userDetailService);
	}
	
	/**
	 * Configuración del token store.
	 * @return TokenService configurado. 
	 */
	@Bean
	@Primary
	public DefaultTokenServices tokenServices( ) {
		DefaultTokenServices tokenServices = new DefaultTokenServices();
		tokenServices.setSupportRefreshToken( true );
		tokenServices.setTokenStore( tokenStore() );
		tokenServices.setAccessTokenValiditySeconds(60);//Tiempo de expiración de token de manera general.
		return tokenServices;
	}
}
