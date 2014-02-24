module.exports = (grunt) -> 
	grunt.initConfig(
		'sftp-deploy':
			build:
				auth:
					host: '50.116.58.133'
					port: 22
					authKey: 'key1'
				src: 'theme'
				dest: 'wp-content/themes/hybrid-dev'
				# dest: 'wp-content/themes/hybrid-education'
		watch:
			styles:
				files: 'theme/*'
				tasks: ['sftp-deploy']
	)

	grunt.loadNpmTasks('grunt-contrib-watch')
	grunt.loadNpmTasks('grunt-sftp-deploy')
	grunt.registerTask('default', ['watch'])
