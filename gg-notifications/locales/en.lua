local Translations = {
    success = {
        title = 'Success',
        default = 'Operation completed successfully'
    },
    error = {
        title = 'Error',
        default = 'Something went wrong'
    },
    info = {
        title = 'Information',
        default = 'New information available'
    },
    warning = {
        title = 'Warning',
        default = 'Warning message'
    }
}

if GetConvar('qb_locale', 'en') == 'en' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Translations
    })
end