//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace vizeprojem
{
    using System;
    using System.Collections.Generic;
    
    public partial class ogrenciderstablo
    {
        public short ogrencidersid { get; set; }
        public Nullable<short> ogrencidersdersid { get; set; }
        public Nullable<short> ogrencidersogrenciid { get; set; }
    
        public virtual derstablo derstablo { get; set; }
        public virtual ogrencilertablo ogrencilertablo { get; set; }
    }
}
