//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CR31.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Contract
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Contract()
        {
            this.Tax = new HashSet<Tax>();
        }
    
        public int ContractID { get; set; }
        public int ExployeeID { get; set; }
        public int ClientID { get; set; }
        public int CarID { get; set; }
        public decimal Amount { get; set; }
        public System.DateTime Start_rent { get; set; }
        public System.DateTime Stop_rent { get; set; }
    
        public virtual Car Car { get; set; }
        public virtual Client Client { get; set; }
        public virtual Exployee Exployee { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tax> Tax { get; set; }
    }
}
