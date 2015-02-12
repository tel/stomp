
(** The [Html5_DSL] signature implements a tagless DSL for the
    construction of Html5 node trees. *)
module type Html5_DSL = sig

  (** Html5 documents constructed abstractly *)
  type t

  (** Abstract attributes *)
  type attr

  (************************************************************)

  (** The [El] module contains all of the HTML 5 element
      constructors. *)
  module El : sig
    
    (** The type of node is a function which constructs a node
        recursively *)
    type mk_node = ?attributes:attr list -> t list -> t
      
    (** The type of leaf is a function which constructs a node with no
        children *)
    type mk_leaf = ?attributes:attr list -> unit -> t
    
    val a_          : mk_node
    val abbr_       : mk_node
    val address_    : mk_node
    val area_       : mk_leaf
    val article_    : mk_node
    val aside_      : mk_node
    val audio_      : mk_node
    val b_          : mk_node
    val base_       : mk_leaf
    val bdo_        : mk_node
    val blockquote_ : mk_node
    val body_       : mk_node
    val br_         : mk_leaf
    val button_     : mk_node
    val canvas_     : mk_node
    val caption_    : mk_node
    val cite_       : mk_node
    val code_       : mk_node
    val col_        : mk_leaf
    val colgroup_   : mk_node
    val command_    : mk_node
    val datalist_   : mk_node
    val dd_         : mk_node
    val del_        : mk_node
    val details_    : mk_node
    val dfn_        : mk_node
    val div_        : mk_node
    val dl_         : mk_node
    val dt_         : mk_node
    val em_         : mk_node
    val embed_      : mk_leaf
    val fieldset_   : mk_node
    val figcaption_ : mk_node
    val figure_     : mk_node
    val footer_     : mk_node
    val form_       : mk_node
    val h1_         : mk_node
    val h2_         : mk_node
    val h3_         : mk_node
    val h4_         : mk_node
    val h5_         : mk_node
    val h6_         : mk_node
    val head_       : mk_node
    val header_     : mk_node
    val hgroup_     : mk_node
    val hr_         : mk_leaf
    val html_       : mk_node
    val i_          : mk_node
    val iframe_     : mk_node
    val img_        : mk_leaf
    val input_      : mk_leaf
    val ins_        : mk_node
    val kbd_        : mk_node
    val keygen_     : mk_leaf
    val label_      : mk_node
    val legend_     : mk_node
    val li_         : mk_node
    val link_       : mk_leaf
    val map_        : mk_node
    val main_       : mk_node
    val mark_       : mk_node
    val menu_       : mk_node
    val menuitem_   : mk_leaf
    val meta_       : mk_leaf
    val meter_      : mk_node
    val nav_        : mk_node
    val noscript_   : mk_node
    val object_     : mk_node
    val ol_         : mk_node
    val optgroup_   : mk_node
    val option_     : mk_node
    val output_     : mk_node
    val p_          : mk_node
    val param_      : mk_leaf
    val svg_        : mk_node
    val pre_        : mk_node
    val progress_   : mk_node
    val q_          : mk_node
    val rp_         : mk_node
    val rt_         : mk_node
    val ruby_       : mk_node
    val samp_       : mk_node
    val script_     : mk_node
    val section_    : mk_node
    val select_     : mk_node
    val small_      : mk_node
    val source_     : mk_leaf
    val span_       : mk_node
    val strong_     : mk_node
    val style_      : mk_node    (* element and attribute *)
    val sub_        : mk_node
    val summary_    : mk_node
    val sup_        : mk_node
    val table_      : mk_node
    val tbody_      : mk_node
    val td_         : mk_node
    val textarea_   : mk_node
    val tfoot_      : mk_node
    val th_         : mk_node
    val template_   : mk_node
    val thead_      : mk_node
    val time_       : mk_node
    val title_      : mk_node    (* element and attribute *)
    val tr_         : mk_node
    val track_      : mk_leaf
    val ul_         : mk_node
    val var_        : mk_node
    val video_      : mk_node
    val wbr_        : mk_leaf
      
  end

  (** The [At] module contains all of the HTML 5 attribute names *)
  module At : sig

    type mk_attr = string -> attr
    
    val accept_             : mk_attr
    val acceptCharset_      : mk_attr
    val accesskey_          : mk_attr
    val action_             : mk_attr
    val alt_                : mk_attr
    val async_              : mk_attr
    val autocomplete_       : mk_attr
    val autofocus_          : mk_attr
    val autoplay_           : mk_attr
    val challenge_          : mk_attr
    val charset_            : mk_attr
    val checked_            : mk_attr
    val cite_               : mk_attr
    val class_              : mk_attr
    val cols_               : mk_attr
    val colspan_            : mk_attr
    val content_            : mk_attr
    val contenteditable_    : mk_attr
    val contextmenu_        : mk_attr
    val controls_           : mk_attr
    val coords_             : mk_attr
    val data_               : mk_attr
    val datetime_           : mk_attr
    val defer_              : mk_attr
    val dir_                : mk_attr
    val disabled_           : mk_attr
    val draggable_          : mk_attr
    val enctype_            : mk_attr
    val for_                : mk_attr
    val form_               : mk_attr
    val formaction_         : mk_attr
    val formenctype_        : mk_attr
    val formmethod_         : mk_attr
    val formnovalidate_     : mk_attr
    val formtarget_         : mk_attr
    val headers_            : mk_attr
    val height_             : mk_attr
    val hidden_             : mk_attr
    val high_               : mk_attr
    val href_               : mk_attr
    val hreflang_           : mk_attr
    val httpEquiv_          : mk_attr
    val icon_               : mk_attr
    val id_                 : mk_attr
    val ismap_              : mk_attr
    val item_               : mk_attr
    val itemprop_           : mk_attr
    val keytype_            : mk_attr
    val label_              : mk_attr
    val lang_               : mk_attr
    val list_               : mk_attr
    val loop_               : mk_attr
    val low_                : mk_attr
    val manifest_           : mk_attr
    val max_                : mk_attr
    val maxlength_          : mk_attr
    val media_              : mk_attr
    val method_             : mk_attr
    val min_                : mk_attr
    val multiple_           : mk_attr
    val name_               : mk_attr
    val novalidate_         : mk_attr
    val onbeforeonload_     : mk_attr
    val onbeforeprint_      : mk_attr
    val onblur_             : mk_attr
    val oncanplay_          : mk_attr
    val oncanplaythrough_   : mk_attr
    val onchange_           : mk_attr
    val onclick_            : mk_attr
    val oncontextmenu_      : mk_attr
    val ondblclick_         : mk_attr
    val ondrag_             : mk_attr
    val ondragend_          : mk_attr
    val ondragenter_        : mk_attr
    val ondragleave_        : mk_attr
    val ondragover_         : mk_attr
    val ondragstart_        : mk_attr
    val ondrop_             : mk_attr
    val ondurationchange_   : mk_attr
    val onemptied_          : mk_attr
    val onended_            : mk_attr
    val onerror_            : mk_attr
    val onfocus_            : mk_attr
    val onformchange_       : mk_attr
    val onforminput_        : mk_attr
    val onhaschange_        : mk_attr
    val oninput_            : mk_attr
    val oninvalid_          : mk_attr
    val onkeydown_          : mk_attr
    val onkeyup_            : mk_attr
    val onload_             : mk_attr
    val onloadeddata_       : mk_attr
    val onloadedmetadata_   : mk_attr
    val onloadstart_        : mk_attr
    val onmessage_          : mk_attr
    val onmousedown_        : mk_attr
    val onmousemove_        : mk_attr
    val onmouseout_         : mk_attr
    val onmouseover_        : mk_attr
    val onmouseup_          : mk_attr
    val onmousewheel_       : mk_attr
    val ononline_           : mk_attr
    val onpagehide_         : mk_attr
    val onpageshow_         : mk_attr
    val onpause_            : mk_attr
    val onplay_             : mk_attr
    val onplaying_          : mk_attr
    val onprogress_         : mk_attr
    val onpropstate_        : mk_attr
    val onratechange_       : mk_attr
    val onreadystatechange_ : mk_attr
    val onredo_             : mk_attr
    val onresize_           : mk_attr
    val onscroll_           : mk_attr
    val onseeked_           : mk_attr
    val onseeking_          : mk_attr
    val onselect_           : mk_attr
    val onstalled_          : mk_attr
    val onstorage_          : mk_attr
    val onsubmit_           : mk_attr
    val onsuspend_          : mk_attr
    val ontimeupdate_       : mk_attr
    val onundo_             : mk_attr
    val onunload_           : mk_attr
    val onvolumechange_     : mk_attr
    val onwaiting_          : mk_attr
    val open_               : mk_attr
    val optimum_            : mk_attr
    val pattern_            : mk_attr
    val ping_               : mk_attr
    val placeholder_        : mk_attr
    val preload_            : mk_attr
    val pubdate_            : mk_attr
    val radiogroup_         : mk_attr
    val readonly_           : mk_attr
    val rel_                : mk_attr
    val required_           : mk_attr
    val reversed_           : mk_attr
    val rows_               : mk_attr
    val rowspan_            : mk_attr
    val sandbox_            : mk_attr
    val scope_              : mk_attr
    val scoped_             : mk_attr
    val seamless_           : mk_attr
    val selected_           : mk_attr
    val shape_              : mk_attr
    val size_               : mk_attr
    val sizes_              : mk_attr
    val span_               : mk_attr
    val spellcheck_         : mk_attr
    val src_                : mk_attr
    val srcdoc_             : mk_attr
    val start_              : mk_attr
    val step_               : mk_attr
    val style_              : mk_attr
    val subject_            : mk_attr
    val summary_            : mk_attr
    val tabindex_           : mk_attr
    val target_             : mk_attr
    val title_              : mk_attr
    val type_               : mk_attr
    val usemap_             : mk_attr
    val value_              : mk_attr
    val width_              : mk_attr
    val wrap_               : mk_attr
    val xmlns_              : mk_attr
      
  end

end

module type Html5 = sig
  type t
  type attr
  val mk_node : name:string -> ?attributes:attr list -> t list -> t
  val mk_leaf : name:string -> ?attributes:attr list -> unit   -> t
  val mk_attr : name:string -> string -> attr
end

module Html5_DSL_Of =
  functor (Z : Html5) -> struct
    include Z

    module El = struct
      type mk_node = ?attributes:attr list -> t list -> t
      type mk_leaf = ?attributes:attr list -> unit -> t

      let a_          = Z.mk_node ~name:"a"
      let abbr_       = Z.mk_node ~name:"abbr"
      let address_    = Z.mk_node ~name:"address"
      let area_       = Z.mk_leaf ~name:"area"
      let article_    = Z.mk_node ~name:"article"
      let aside_      = Z.mk_node ~name:"aside"
      let audio_      = Z.mk_node ~name:"audio"
      let b_          = Z.mk_node ~name:"b"
      let base_       = Z.mk_leaf ~name:"base"
      let bdo_        = Z.mk_node ~name:"bdo"
      let blockquote_ = Z.mk_node ~name:"blockquote"
      let body_       = Z.mk_node ~name:"body"
      let br_         = Z.mk_leaf ~name:"br"
      let button_     = Z.mk_node ~name:"button"
      let canvas_     = Z.mk_node ~name:"canvas"
      let caption_    = Z.mk_node ~name:"caption"
      let cite_       = Z.mk_node ~name:"cite"
      let code_       = Z.mk_node ~name:"code"
      let col_        = Z.mk_leaf ~name:"col"
      let colgroup_   = Z.mk_node ~name:"colgroup"
      let command_    = Z.mk_node ~name:"command"
      let datalist_   = Z.mk_node ~name:"datalist"
      let dd_         = Z.mk_node ~name:"dd"
      let del_        = Z.mk_node ~name:"del"
      let details_    = Z.mk_node ~name:"details"
      let dfn_        = Z.mk_node ~name:"dfn"
      let div_        = Z.mk_node ~name:"div"
      let dl_         = Z.mk_node ~name:"dl"
      let dt_         = Z.mk_node ~name: "dt"
      let em_         = Z.mk_node ~name:"em"
      let embed_      = Z.mk_leaf ~name:"embed"
      let fieldset_   = Z.mk_node ~name:"fieldset"
      let figcaption_ = Z.mk_node ~name:"figcaption"
      let figure_     = Z.mk_node ~name:"figure"
      let footer_     = Z.mk_node ~name:"footer"
      let form_       = Z.mk_node ~name:"form"
      let h1_         = Z.mk_node ~name:"h1"
      let h2_         = Z.mk_node ~name:"h2"
      let h3_         = Z.mk_node ~name:"h3"
      let h4_         = Z.mk_node ~name:"h4"
      let h5_         = Z.mk_node ~name:"h5"
      let h6_         = Z.mk_node ~name:"h6"
      let head_       = Z.mk_node ~name:"head"
      let header_     = Z.mk_node ~name:"header"
      let hgroup_     = Z.mk_node ~name:"hgroup"
      let hr_         = Z.mk_leaf ~name:"hr"
      let html_       = Z.mk_node ~name:"html"
      let i_          = Z.mk_node ~name:"i"
      let iframe_     = Z.mk_node ~name:"iframe"
      let img_        = Z.mk_leaf ~name:"img"
      let input_      = Z.mk_leaf ~name:"input"
      let ins_        = Z.mk_node ~name:"ins"
      let kbd_        = Z.mk_node ~name:"kbd"
      let keygen_     = Z.mk_leaf ~name:"keygen"
      let label_      = Z.mk_node ~name:"label"
      let legend_     = Z.mk_node ~name:"legend"
      let li_         = Z.mk_node ~name:"li"
      let link_       = Z.mk_leaf ~name: "link"
      let map_        = Z.mk_node ~name: "map"
      let main_       = Z.mk_node ~name: "main"
      let mark_       = Z.mk_node ~name: "mark"
      let menu_       = Z.mk_node ~name: "menu"
      let menuitem_   = Z.mk_leaf ~name: "menuitem"
      let meta_       = Z.mk_leaf ~name:"meta"
      let meter_      = Z.mk_node ~name:"meter"
      let nav_        = Z.mk_node ~name:"nav"
      let noscript_   = Z.mk_node ~name:"noscript"
      let object_     = Z.mk_node ~name:"object"
      let ol_         = Z.mk_node ~name:"ol"
      let optgroup_   = Z.mk_node ~name:"optgroup"
      let option_     = Z.mk_node ~name:"option"
      let output_     = Z.mk_node ~name:"output"
      let p_          = Z.mk_node ~name:"p"
      let param_      = Z.mk_leaf ~name:"param"
      let svg_        = Z.mk_node ~name:"svg"
      let pre_        = Z.mk_node ~name:"pre"
      let progress_   = Z.mk_node ~name:"progress"
      let q_          = Z.mk_node ~name:"q"
      let rp_         = Z.mk_node ~name:"rp"
      let rt_         = Z.mk_node ~name:"rt"
      let ruby_       = Z.mk_node ~name:"ruby"
      let samp_       = Z.mk_node ~name:"samp"
      let script_     = Z.mk_node ~name:"script"
      let section_    = Z.mk_node ~name:"section"
      let select_     = Z.mk_node ~name:"select"
      let small_      = Z.mk_node ~name:"small"
      let source_     = Z.mk_leaf ~name:"source"
      let span_       = Z.mk_node ~name:"span"
      let strong_     = Z.mk_node ~name:"strong"
      let style_      = Z.mk_node ~name:"style"
      let sub_        = Z.mk_node ~name:"sub"
      let summary_    = Z.mk_node ~name:"summary"
      let sup_        = Z.mk_node ~name:"sup"
      let table_      = Z.mk_node ~name:"table"
      let tbody_      = Z.mk_node ~name:"tbody"
      let td_         = Z.mk_node ~name:"td"
      let textarea_   = Z.mk_node ~name:"textarea"
      let tfoot_      = Z.mk_node ~name:"tfoot"
      let th_         = Z.mk_node ~name:"th"
      let template_   = Z.mk_node ~name:"template"
      let thead_      = Z.mk_node ~name:"thead"
      let time_       = Z.mk_node ~name:"time"
      let title_      = Z.mk_node ~name:"title"
      let tr_         = Z.mk_node ~name:"tr"
      let track_      = Z.mk_leaf ~name:"track"
      let ul_         = Z.mk_node ~name:"ul"
      let var_        = Z.mk_node ~name:"var"
      let video_      = Z.mk_node ~name:"video"
      let wbr_        = Z.mk_leaf ~name:"wbr"      
    end

    module At = struct
      type mk_attr = string -> attr
    
      let accept_             = Z.mk_attr ~name:"accept"
      let acceptCharset_      = Z.mk_attr ~name:"acceptCharset"
      let accesskey_          = Z.mk_attr ~name:"accesskey"
      let action_             = Z.mk_attr ~name:"action"
      let alt_                = Z.mk_attr ~name:"alt"
      let async_              = Z.mk_attr ~name:"async"
      let autocomplete_       = Z.mk_attr ~name:"autocomplete"
      let autofocus_          = Z.mk_attr ~name:"autofocus"
      let autoplay_           = Z.mk_attr ~name:"autoplay"
      let challenge_          = Z.mk_attr ~name:"challenge"
      let charset_            = Z.mk_attr ~name:"charset"
      let checked_            = Z.mk_attr ~name:"checked"
      let cite_               = Z.mk_attr ~name:"cite"
      let class_              = Z.mk_attr ~name:"class"
      let cols_               = Z.mk_attr ~name:"cols"
      let colspan_            = Z.mk_attr ~name:"colspan"
      let content_            = Z.mk_attr ~name:"content"
      let contenteditable_    = Z.mk_attr ~name:"contenteditable"
      let contextmenu_        = Z.mk_attr ~name:"contextmenu"
      let controls_           = Z.mk_attr ~name:"controls"
      let coords_             = Z.mk_attr ~name:"coords"
      let data_               = Z.mk_attr ~name:"data"
      let datetime_           = Z.mk_attr ~name:"datetime"
      let defer_              = Z.mk_attr ~name:"defer"
      let dir_                = Z.mk_attr ~name:"dir"
      let disabled_           = Z.mk_attr ~name:"disabled"
      let draggable_          = Z.mk_attr ~name:"draggable"
      let enctype_            = Z.mk_attr ~name:"enctype"
      let for_                = Z.mk_attr ~name:"for"
      let form_               = Z.mk_attr ~name:"form"
      let formaction_         = Z.mk_attr ~name:"formaction"
      let formenctype_        = Z.mk_attr ~name:"formenctype"
      let formmethod_         = Z.mk_attr ~name:"formmethod"
      let formnovalidate_     = Z.mk_attr ~name:"formnovalidate"
      let formtarget_         = Z.mk_attr ~name:"formtarget"
      let headers_            = Z.mk_attr ~name:"headers"
      let height_             = Z.mk_attr ~name:"height"
      let hidden_             = Z.mk_attr ~name:"hidden"
      let high_               = Z.mk_attr ~name:"high"
      let href_               = Z.mk_attr ~name:"href"
      let hreflang_           = Z.mk_attr ~name:"hreflang"
      let httpEquiv_          = Z.mk_attr ~name:"httpEquiv"
      let icon_               = Z.mk_attr ~name:"icon"
      let id_                 = Z.mk_attr ~name:"id"
      let ismap_              = Z.mk_attr ~name:"ismap"
      let item_               = Z.mk_attr ~name:"item"
      let itemprop_           = Z.mk_attr ~name:"itemprop"
      let keytype_            = Z.mk_attr ~name:"keytype"
      let label_              = Z.mk_attr ~name:"label"
      let lang_               = Z.mk_attr ~name:"lang"
      let list_               = Z.mk_attr ~name:"list"
      let loop_               = Z.mk_attr ~name:"loop"
      let low_                = Z.mk_attr ~name:"low"
      let manifest_           = Z.mk_attr ~name:"manifest"
      let max_                = Z.mk_attr ~name:"max"
      let maxlength_          = Z.mk_attr ~name:"maxlength"
      let media_              = Z.mk_attr ~name:"media"
      let method_             = Z.mk_attr ~name:"method"
      let min_                = Z.mk_attr ~name:"min"
      let multiple_           = Z.mk_attr ~name:"multiple"
      let name_               = Z.mk_attr ~name:"name"
      let novalidate_         = Z.mk_attr ~name:"novalidate"
      let onbeforeonload_     = Z.mk_attr ~name:"onbeforeonload"
      let onbeforeprint_      = Z.mk_attr ~name:"onbeforeprint"
      let onblur_             = Z.mk_attr ~name:"onblur"
      let oncanplay_          = Z.mk_attr ~name:"oncanplay"
      let oncanplaythrough_   = Z.mk_attr ~name:"oncanplaythrough"
      let onchange_           = Z.mk_attr ~name:"onchange"
      let onclick_            = Z.mk_attr ~name:"onclick"
      let oncontextmenu_      = Z.mk_attr ~name:"oncontextmenu"
      let ondblclick_         = Z.mk_attr ~name:"ondblclick"
      let ondrag_             = Z.mk_attr ~name:"ondrag"
      let ondragend_          = Z.mk_attr ~name:"ondragend"
      let ondragenter_        = Z.mk_attr ~name:"ondragenter"
      let ondragleave_        = Z.mk_attr ~name:"ondragleave"
      let ondragover_         = Z.mk_attr ~name:"ondragover"
      let ondragstart_        = Z.mk_attr ~name:"ondragstart"
      let ondrop_             = Z.mk_attr ~name:"ondrop"
      let ondurationchange_   = Z.mk_attr ~name:"ondurationchange"
      let onemptied_          = Z.mk_attr ~name:"onemptied"
      let onended_            = Z.mk_attr ~name:"onended"
      let onerror_            = Z.mk_attr ~name:"onerror"
      let onfocus_            = Z.mk_attr ~name:"onfocus"
      let onformchange_       = Z.mk_attr ~name:"onformchange"
      let onforminput_        = Z.mk_attr ~name:"onforminput"
      let onhaschange_        = Z.mk_attr ~name:"onhaschange"
      let oninput_            = Z.mk_attr ~name:"oninput"
      let oninvalid_          = Z.mk_attr ~name:"oninvalid"
      let onkeydown_          = Z.mk_attr ~name:"onkeydown"
      let onkeyup_            = Z.mk_attr ~name:"onkeyup"
      let onload_             = Z.mk_attr ~name:"onload"
      let onloadeddata_       = Z.mk_attr ~name:"onloadeddata"
      let onloadedmetadata_   = Z.mk_attr ~name:"onloadedmetadata"
      let onloadstart_        = Z.mk_attr ~name:"onloadstart"
      let onmessage_          = Z.mk_attr ~name:"onmessage"
      let onmousedown_        = Z.mk_attr ~name:"onmousedown"
      let onmousemove_        = Z.mk_attr ~name:"onmousemove"
      let onmouseout_         = Z.mk_attr ~name:"onmouseout"
      let onmouseover_        = Z.mk_attr ~name:"onmouseover"
      let onmouseup_          = Z.mk_attr ~name:"onmouseup"
      let onmousewheel_       = Z.mk_attr ~name:"onmousewheel"
      let ononline_           = Z.mk_attr ~name:"ononline"
      let onpagehide_         = Z.mk_attr ~name:"onpagehide"
      let onpageshow_         = Z.mk_attr ~name:"onpageshow"
      let onpause_            = Z.mk_attr ~name:"onpause"
      let onplay_             = Z.mk_attr ~name:"onplay"
      let onplaying_          = Z.mk_attr ~name:"onplaying"
      let onprogress_         = Z.mk_attr ~name:"onprogress"
      let onpropstate_        = Z.mk_attr ~name:"onpropstate"
      let onratechange_       = Z.mk_attr ~name:"onratechange"
      let onreadystatechange_ = Z.mk_attr ~name:"onreadystatechange"
      let onredo_             = Z.mk_attr ~name:"onredo"
      let onresize_           = Z.mk_attr ~name:"onresize"
      let onscroll_           = Z.mk_attr ~name:"onscroll"
      let onseeked_           = Z.mk_attr ~name:"onseeked"
      let onseeking_          = Z.mk_attr ~name:"onseeking"
      let onselect_           = Z.mk_attr ~name:"onselect"
      let onstalled_          = Z.mk_attr ~name:"onstalled"
      let onstorage_          = Z.mk_attr ~name:"onstorage"
      let onsubmit_           = Z.mk_attr ~name:"onsubmit"
      let onsuspend_          = Z.mk_attr ~name:"onsuspend"
      let ontimeupdate_       = Z.mk_attr ~name:"ontimeupdate"
      let onundo_             = Z.mk_attr ~name:"onundo"
      let onunload_           = Z.mk_attr ~name:"onunload"
      let onvolumechange_     = Z.mk_attr ~name:"onvolumechange"
      let onwaiting_          = Z.mk_attr ~name:"onwaiting"
      let open_               = Z.mk_attr ~name:"open"
      let optimum_            = Z.mk_attr ~name:"optimum"
      let pattern_            = Z.mk_attr ~name:"pattern"
      let ping_               = Z.mk_attr ~name:"ping"
      let placeholder_        = Z.mk_attr ~name:"placeholder"
      let preload_            = Z.mk_attr ~name:"preload"
      let pubdate_            = Z.mk_attr ~name:"pubdate"
      let radiogroup_         = Z.mk_attr ~name:"radiogroup"
      let readonly_           = Z.mk_attr ~name:"readonly"
      let rel_                = Z.mk_attr ~name:"rel"
      let required_           = Z.mk_attr ~name:"required"
      let reversed_           = Z.mk_attr ~name:"reversed"
      let rows_               = Z.mk_attr ~name:"rows"
      let rowspan_            = Z.mk_attr ~name:"rowspan"
      let sandbox_            = Z.mk_attr ~name:"sandbox"
      let scope_              = Z.mk_attr ~name:"scope"
      let scoped_             = Z.mk_attr ~name:"scoped"
      let seamless_           = Z.mk_attr ~name:"seamless"
      let selected_           = Z.mk_attr ~name:"selected"
      let shape_              = Z.mk_attr ~name:"shape"
      let size_               = Z.mk_attr ~name:"size"
      let sizes_              = Z.mk_attr ~name:"sizes"
      let span_               = Z.mk_attr ~name:"span"
      let spellcheck_         = Z.mk_attr ~name:"spellcheck"
      let src_                = Z.mk_attr ~name:"src"
      let srcdoc_             = Z.mk_attr ~name:"srcdoc"
      let start_              = Z.mk_attr ~name:"start"
      let step_               = Z.mk_attr ~name:"step"
      let style_              = Z.mk_attr ~name:"style"
      let subject_            = Z.mk_attr ~name:"subject"
      let summary_            = Z.mk_attr ~name:"summary"
      let tabindex_           = Z.mk_attr ~name:"tabindex"
      let target_             = Z.mk_attr ~name:"target"
      let title_              = Z.mk_attr ~name:"title"
      let type_               = Z.mk_attr ~name:"type"
      let usemap_             = Z.mk_attr ~name:"usemap"
      let value_              = Z.mk_attr ~name:"value"
      let width_              = Z.mk_attr ~name:"width"
      let wrap_               = Z.mk_attr ~name:"wrap"
      let xmlns_              = Z.mk_attr ~name:"xmlns"
    end
    
  end

module Html5_Initial = struct
  type attr = string * string
  type t =
    | Node of string * attr list * t list
    | Text of string
        
  let mk_node ~name ?attributes:(a = []) children = Node (name, a, children)
  let mk_leaf ~name ?attributes:(a = []) _        = Node (name, a, [])
  let mk_attr ~name value                         = (name, value)
end
