require "application_system_test_case"

class IncomesTest < ApplicationSystemTestCase
  setup do
    @income = incomes(:one)
  end

  test "visiting the index" do
    visit incomes_url
    assert_selector "h3", text: I18n.t('activerecord.models.income.other')
  end

  test "should create income" do
    visit incomes_url
    click_on I18n.t('crud.action.new')

    fill_in I18n.t('activerecord.attributes.income.amount'), with: @income.amount
    fill_in I18n.t('activerecord.attributes.income.description'), with: @income.description
    fill_in I18n.t('activerecord.attributes.income.name'), with: @income.name
    fill_in I18n.t('activerecord.attributes.income.payday'), with: @income.payday
    click_on I18n.t('form.button.create', model: I18n.t('activerecord.models.income.one'))

    assert_text I18n.t('form.messages.successfully_created')
    click_on I18n.t('activerecord.models.income.other')
  end

  test "should update Income" do
    visit incomes_url
    click_on I18n.t('crud.action.edit'), match: :first

    fill_in I18n.t('activerecord.attributes.income.amount'), with: @income.amount
    fill_in I18n.t('activerecord.attributes.income.description'), with: @income.description
    fill_in I18n.t('activerecord.attributes.income.name'), with: @income.name
    fill_in I18n.t('activerecord.attributes.income.payday'), with: @income.payday
    click_on I18n.t('form.button.update', model: I18n.t('activerecord.models.income.one'))

    assert_text I18n.t('form.messages.successfully_updated')
    click_on I18n.t('activerecord.models.income.other')
  end

  test "should destroy Income" do
    visit incomes_url

    page.accept_confirm do
      click_on I18n.t('crud.action.destroy'), match: :first
    end

    assert_text I18n.t('form.messages.successfully_destroyed')
  end
end
