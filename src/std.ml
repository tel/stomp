(** The [Std] module exports all of the Stomp modules under a unified
    namespace *)

(** The [Html5] module contains module types which support the
    construction of an HTML tree. *)
module Html5 = Html5

(** Html5_Initial is a basic initial encoding of an HTML tree. *)
module Html5_Initial = struct

  module Attr = struct
    type t = string
    type v = string
    let compare = String.compare
  end

  module AttrMap = Map.Make (Attr)
  type attrs = Attr.v AttrMap.t

  type t =
    | Node of string * attrs * t list
    | Text of string

  let text t = Text t
  
  let mk_node ~name ?attributes:(a = AttrMap.empty) children = Node (name, a, children)
  let mk_leaf ~name ?attributes:(a = AttrMap.empty) _        = Node (name, a, [])
  let mk_attr ~name value                                    = AttrMap.singleton name value
end

module Html5_Initial_DSL = Html5.DSL_Of (Html5_Initial)
