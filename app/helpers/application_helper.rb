module ApplicationHelper

  def btn_new btn_path
    link_to btn_path, class: 'page-btn-new' do
     "<svg class='w-5 h-5' fill='none' stroke='currentColor' viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'>
        <path 
          stroke-linecap='round'
          stroke-linejoin='round'
          stroke-width='2'
          d='M9 13h6m-3-3v6m5 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z'
        ></path>
      </svg><span class='mx-2 my-1 hidden xl:block'> #{t('crud.action.new')} </span>".html_safe
   end
  end

  def btn_show bth_path 
    link_to bth_path, class: 'text-indigo-600', title: t('crud.action.show') do
      "<svg class='w-5 h-5' fill='none' stroke='currentColor' viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'>
        <path stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M15 12a3 3 0 11-6 0 3 3 0 016 0z'></path>
        <path
          stroke-linecap='round'
          stroke-linejoin='round'
          stroke-width='2'
          d='M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z'
        ></path>
      </svg>".html_safe
    end
  end

  def btn_edit bth_path
    link_to bth_path, class: 'text-indigo-600', title: t('crud.action.edit') do
      "<svg class='w-5 h-5' fill='none' stroke='currentColor' viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'>
        <path
          stroke-linecap='round'
          stroke-linejoin='round'
          stroke-width='2'
          d='M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z'
        ></path>
      </svg>".html_safe
    end
  end

  def btn_destroy bth_path
    button_to bth_path, method: :delete, data: { turbo_confirm: t('form.messages.are_you_sure') }, class: 'text-indigo-600', title: t('crud.action.destroy') do
      "<svg class='w-5 h-5' fill='none' stroke='currentColor' viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'>
        <path
          stroke-linecap='round'
          stroke-linejoin='round'
          stroke-width='2'
          d='M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16'
        ></path>
      </svg>".html_safe
    end
  end
end
