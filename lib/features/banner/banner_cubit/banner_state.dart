part of 'banner_cubit.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.initial() = Initial;
  const factory BannerState.bannerLoading() = BannerLoading;
  const factory BannerState.bannerFailure(String error) = BannerFailure;
  const factory BannerState.bannerLoaded(List<BannerModel> banners) =
      BannerLoaded;
}
