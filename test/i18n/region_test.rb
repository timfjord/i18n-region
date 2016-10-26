require 'test_helper'

class I18n::RegionTest < Minitest::Test
  def setup
    I18n.available_locales = [:'en-US', :'en-GB']
    I18n.enforce_available_locales = false
    super
  end

  def teardown
    I18n.locale = :en
    I18n.available_locales = nil
    I18n.enforce_available_locales = true
    super
  end

  def test_that_it_has_a_version_number
    refute_nil ::I18n::Region::VERSION
  end

  def test_default_lang_and_region
    assert_equal I18n.lang, :en
    assert_equal I18n.region, nil
  end

  def test_that_it_allows_to_get_region_and_lang
    I18n.locale = :'en-GB'
    assert_equal I18n.lang, :en
    assert_equal I18n.region, :gb
  end

  def test_that_it_clears_region_cache
    I18n.locale = :'en-GB'
    assert_equal I18n.region, :gb

    I18n.locale = :'en-US'
    assert_equal I18n.region, :us
  end
end
