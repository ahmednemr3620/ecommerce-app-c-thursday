// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api_manager/api_manager.dart' as _i3;
import '../data/datasource_contract/brands_datasource.dart' as _i8;
import '../data/datasource_contract/categories_datasource.dart' as _i4;
import '../data/datasource_contract/product_datasource.dart' as _i10;
import '../data/datasource_impl/brands_datasource_impl.dart' as _i9;
import '../data/datasource_impl/categories_datasource_impl.dart' as _i5;
import '../data/datasource_impl/products_datasource_impl.dart' as _i11;
import '../data/repository_impl/brands_repository_impl.dart' as _i14;
import '../data/repository_impl/categories_repository_impl.dart' as _i7;
import '../data/repository_impl/products_repository_impl.dart' as _i16;
import '../domain/repository/brands_repository.dart' as _i13;
import '../domain/repository/categories_repository.dart' as _i6;
import '../domain/repository/product_repository.dart' as _i15;
import '../domain/usecases/get_brands_usecase.dart' as _i17;
import '../domain/usecases/get_categories_usecase.dart' as _i12;
import '../domain/usecases/get_products_usecase.dart' as _i19;
import '../presentation/ui/home/tabs/home_tab/home_tab_view_model.dart' as _i18;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ApiManager>(() => _i3.ApiManager());
    gh.factory<_i4.CategoriesDataSource>(
        () => _i5.CategoriesDataSourceImpl(apiManager: gh<_i3.ApiManager>()));
    gh.factory<_i6.CategoriesRepository>(() => _i7.CategoryRepositoryImp(
        categoriesDataSource: gh<_i4.CategoriesDataSource>()));
    gh.factory<_i8.BrandsDataSource>(
        () => _i9.BrandsDataSourceImpl(apiManager: gh<_i3.ApiManager>()));
    gh.factory<_i10.ProductDataSource>(
        () => _i11.ProductsDataSourceImpl(apiManager: gh<_i3.ApiManager>()));
    gh.factory<_i12.GetCategoriesUSeCase>(() => _i12.GetCategoriesUSeCase(
        categoryRepository: gh<_i6.CategoriesRepository>()));
    gh.factory<_i13.BrandsRepository>(() => _i14.BrandsRepositoryImpl(
        brandsDataSource: gh<_i8.BrandsDataSource>()));
    gh.factory<_i15.ProductRepository>(() => _i16.ProductsRepositoryImpl(
        productDataSource: gh<_i10.ProductDataSource>()));
    gh.factory<_i17.GetBrandsUseCase>(() =>
        _i17.GetBrandsUseCase(brandsRepository: gh<_i13.BrandsRepository>()));
    gh.factory<_i18.HomeTabViewModel>(() => _i18.HomeTabViewModel(
          getCategoriesUseCase: gh<_i12.GetCategoriesUSeCase>(),
          getBrandsUseCase: gh<_i17.GetBrandsUseCase>(),
          getProductsUseCase: gh<_i19.GetProductsUseCase>(),
        ));
    return this;
  }
}
