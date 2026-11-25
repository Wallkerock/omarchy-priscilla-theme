-- local active_border_color = { colors = { "rgba(cfbfffee)", "rgba(26FFFBee)" }, angle = 45 }
local active_border_color = "rgba(cfbfffee)"
local inactive_border_color = "rgba(1a2224aa)"

hl.config({
  general = {
    gaps_in = 8,
    gaps_out = 16,
    border_size = 2,

    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },
  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
  decoration = {
    rounding = 0,
    rounding_power = 3,

    shadow = {
      enabled = true,
      render_power = 9,
      range = 6,
      color = "rgba(00000060)",
      color_inactive = "rgba(00000040)",
      -- Ďalšie moderné parametre (odkomentujte, ak chcete použiť)
      offset = {0,0},              -- Posun tieňa v osi X a Y [0, 0]
      -- scale = 1.0,                 -- Mierka tieňa [0.0 - 1.0]
      sharp = false,               -- Ak je true, vytvorí ostrý retro tieň bez prechodu
    },

    -- -- Dim unfocused windows (0.0 = no dim, 1.0 = fully dimmed).
    -- dim_inactive = true,
    -- dim_strength = 0.15,

    -- blur = {
    --   enabled = true,
    --   size= 15,
    --   passes = 3,
    --   ignore_opacity = true,
    --   new_optimizations = true,
    --   xray = false,
    --   noise = 0.30,
    --   contrast = 1.0,
    --   brightness = 1.0,
    --   vibrancy = 0.2,
    --   vibrancy_darkness = 0.9,
    --   popups = true,
    -- },
  },
})

-- Default animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("smoothFlow", { type = "bezier", points = { { 0.25, 0.46 }, { 0.45, 0.94 } } })
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1.0 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 3.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "fadeSwitch", enabled = false })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 2.2, bezier = "smoothFlow", style = "slide" })

---------------------------------------------------------------------------------

-- hl.curve("smooth", { type = "bezier", points = { {0.33, 1.0}, {0.68, 1.0} } })
-- hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "smooth", style = "slidefade 20%" })
-- hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "smooth", style = "popin 80%" })

---------------------------------------------------------------------------------

-- hl.curve("smoothFlow", { type = "bezier", points = { { 0.25, 0.46 }, { 0.45, 0.94 } } })
-- hl.curve("liquidSnap", { type = "bezier", points = { { 0.68, -0.55 }, { 0.265, 1.55 } } })
-- hl.curve("appleSilk", { type = "bezier", points = { { 0.34, 1.56 }, { 0.64, 1 } } })
-- hl.curve("elasticPop", { type = "bezier", points = { { 0.175, 0.885 }, { 0.32, 1.275 } } })
--
-- hl.animation({
-- 	leaf = "windows",
-- 	enabled = true,
-- 	speed = 2.0,
-- 	bezier = "smoothFlow",
-- 	style = "slide",
-- })
-- hl.animation({
-- 	leaf = "windowsOut",
-- 	enabled = true,
-- 	speed = 2.0,
-- 	bezier = "smoothFlow",
-- 	style = "popin 80%",
-- })
-- hl.animation({
-- 	leaf = "windowsIn",
-- 	enabled = true,
-- 	speed = 2.0,
-- 	bezier = "smoothFlow",
-- 	style = "slide",
-- })
-- hl.animation({
-- 	leaf = "border",
-- 	enabled = true,
-- 	speed = 2.5,
-- 	bezier = "smoothFlow",
-- })
-- hl.animation({
-- 	leaf = "workspaces",
-- 	enabled = true,
-- 	speed = 2.2,
-- 	bezier = "smoothFlow",
-- 	style = "slide",
-- })
-- hl.animation({
-- 	leaf = "fade",
-- 	enabled = true,
-- 	speed = 1.5,
-- 	bezier = "smoothFlow",
-- })
-- hl.animation({
-- 	leaf = "layers",
-- 	enabled = true,
-- 	speed = 2,
-- 	bezier = "elasticPop",
-- })

-- https://wiki.hypr.land/Configuring/Basics/Variables/#layout
-- hl.config({
--   layout = {
--     -- Avoid overly wide single-window layouts on wide screens.
--     single_window_aspect_ratio = { 1, 1 },
--   },
-- })

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
-- hl.config({
--   scrolling = {
--     -- See only one column per screen instead of two.
--     column_width = 0.97,
--   },
-- })

hl.config({
  misc = {
    vrr = 1, -- 1 = zapnuté stále, 2 = zapnuté iba vo fullscreen aplikáciách (odporúčané)
  },
})

hl.config({
  render = {
    -- Vypne agresívne plánovanie snímkov, ktoré zhadzuje full-screen mpv
    new_render_scheduling = false,
  },
})
