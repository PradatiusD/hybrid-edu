module.exports = (grunt) -> 
	grunt.initConfig(
		'sftp-deploy':
			build:
				auth:
					host: '50.116.58.133'
					port: 22
					authKey: 'key1'
				src: 'theme'
				dest: '/wp-content/themes/hybrid-education/'
				# exclusions: ['homepage/*.js']
		watch:
			# styles:
			# 	files: '*.sass'
			# 	tasks: ['sass']
			# 	options:
			# 		debounceDelay: 250
	)

	grunt.loadNpmTasks('grunt-contrib-watch')
	grunt.loadNpmTasks('grunt-sftp-deploy')
	grunt.registerTask('default', ['sftp-deploy'])
