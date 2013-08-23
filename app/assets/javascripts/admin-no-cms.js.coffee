$(->
	$('#title_bar').hide()

	Admin =
		_showPanel: ->
			$('#modal-panel').modal()

		_confirmPanel: ->
			$('#confirm-off-panel').modal()

		_emptyForm: ->
			$('input[name="mode[title]"]').val('')
			$('input[name="mode[text]"]').val('')
			$('input[name="mode[recommendation_1_title]"]').val('')
			$('textarea[name="mode[recommendation_1_text]"]').val('')
			$('input[name="mode[recommendation_2_title]"]').val('')
			$('textarea[name="mode[recommendation_2_text]"]').val('')
			$('input[name="mode[recommendation_3_title]"]').val('')
			$('textarea[name="mode[recommendation_3_text]"]').val('')

		_fillFormWithCurrentInfo: ->
			$('input[name="mode[title]"]').val($('.current-title').text())
			$('input[name="mode[text]"]').val($('.current-text').text())
			$('input[name="mode[recommendation_1_title]"]').val($('.current-recommendation_1_title').text())
			$('textarea[name="mode[recommendation_1_text]"]').val($('.current-recommendation_1_text').text())
			$('input[name="mode[recommendation_2_title]"]').val($('.current-recommendation_2_title').text())
			$('textarea[name="mode[recommendation_2_text]"]').val($('.current-recommendation_2_text').text())
			$('input[name="mode[recommendation_3_title]"]').val($('.current-recommendation_3_title').text())
			$('textarea[name="mode[recommendation_3_text]"]').val($('.current-recommendation_3_text').text())

		_setFormAction: (action_name) ->
			$('input[name="mode_action"]').val action_name

		initializeTurnOnBtn: ->
			$('#turn-on-btn').click ->
				Admin._setFormAction 'switch-on'
				Admin._emptyForm()
				Admin._showPanel()

		initializeTurnOffBtn: ->
			$('#turn-off-btn').click ->
				Admin._setFormAction 'switch-off'
				Admin._confirmPanel()

		initializeUpdateCrisisInfoBtn: ->
			$('#update_crisis_info').click ->
				Admin._setFormAction 'update'
				Admin._fillFormWithCurrentInfo()
				Admin._showPanel()

		init: ->
			this.initializeTurnOnBtn()
			this.initializeUpdateCrisisInfoBtn()
			this.initializeTurnOffBtn()

	Admin.init()

)