require 'test_helper'

class CombatantsControllerTest < ActionController::TestCase
  setup do
    @combatant = combatants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:combatants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create combatant" do
    assert_difference('Combatant.count') do
      post :create, combatant: { caption: @combatant.caption, url: @combatant.url }
    end

    assert_redirected_to combatant_path(assigns(:combatant))
  end

  test "should show combatant" do
    get :show, id: @combatant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @combatant
    assert_response :success
  end

  test "should update combatant" do
    patch :update, id: @combatant, combatant: { caption: @combatant.caption, url: @combatant.url }
    assert_redirected_to combatant_path(assigns(:combatant))
  end

  test "should destroy combatant" do
    assert_difference('Combatant.count', -1) do
      delete :destroy, id: @combatant
    end

    assert_redirected_to combatants_path
  end
end
