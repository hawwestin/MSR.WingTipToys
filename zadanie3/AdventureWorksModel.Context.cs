﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AdventureBikeShop
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class AdventureWorksLT_DataEntities : DbContext
    {
        public AdventureWorksLT_DataEntities()
            : base("name=AdventureWorksLT_DataEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<ErrorLog> ErrorLog { get; set; }
        public DbSet<Address> Address { get; set; }
        public DbSet<Customer> Customer { get; set; }
        public DbSet<CustomerAddress> CustomerAddress { get; set; }
        public DbSet<Product> Product { get; set; }
        public DbSet<ProductCategory> ProductCategory { get; set; }
        public DbSet<ProductDescription> ProductDescription { get; set; }
        public DbSet<ProductModel> ProductModel { get; set; }
        public DbSet<ProductModelProductDescription> ProductModelProductDescription { get; set; }
        public DbSet<SalesOrderDetail> SalesOrderDetail { get; set; }
        public DbSet<SalesOrderHeader> SalesOrderHeader { get; set; }
        public DbSet<BuildVersion> BuildVersion { get; set; }
        public DbSet<vGetAllCategories> vGetAllCategories { get; set; }
        public DbSet<vProductAndDescription> vProductAndDescription { get; set; }
        public DbSet<vProductModelCatalogDescription> vProductModelCatalogDescription { get; set; }
    
        [EdmFunction("AdventureWorksLT_DataEntities", "ufnGetAllCategories")]
        public virtual IQueryable<ufnGetAllCategories_Result> ufnGetAllCategories()
        {
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<ufnGetAllCategories_Result>("[AdventureWorksLT_DataEntities].[ufnGetAllCategories]()");
        }
    
        [EdmFunction("AdventureWorksLT_DataEntities", "ufnGetCustomerInformation")]
        public virtual IQueryable<ufnGetCustomerInformation_Result> ufnGetCustomerInformation(Nullable<int> customerID)
        {
            var customerIDParameter = customerID.HasValue ?
                new ObjectParameter("CustomerID", customerID) :
                new ObjectParameter("CustomerID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<ufnGetCustomerInformation_Result>("[AdventureWorksLT_DataEntities].[ufnGetCustomerInformation](@CustomerID)", customerIDParameter);
        }
    
        public virtual int uspLogError(ObjectParameter errorLogID)
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("uspLogError", errorLogID);
        }
    
        public virtual int uspPrintError()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("uspPrintError");
        }
    }
}
