###### Class com.google.android.gms.ads.nativead.NativeAd (com.google.android.gms.ads.nativead.NativeAd)
.class public abstract Lcom/google/android/gms/ads/nativead/NativeAd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;,
        Lcom/google/android/gms/ads/nativead/NativeAd$Image;,
        Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;,
        Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Lcom/google/android/gms/ads/ResponseInfo;
.end method

.method protected abstract e()Ljava/lang/Object;
.end method

###### Class com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo (com.google.android.gms.ads.nativead.NativeAd$AdChoicesInfo)
.class public abstract Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AdChoicesInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.ads.nativead.NativeAd.Image (com.google.android.gms.ads.nativead.NativeAd$Image)
.class public abstract Lcom/google/android/gms/ads/nativead/NativeAd$Image;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Image"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener (com.google.android.gms.ads.nativead.NativeAd$OnNativeAdLoadedListener)
.class public interface abstract Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNativeAdLoadedListener"
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/gms/ads/nativead/NativeAd;)V
.end method

###### Class com.google.android.gms.ads.nativead.NativeAd.UnconfirmedClickListener (com.google.android.gms.ads.nativead.NativeAd$UnconfirmedClickListener)
.class public interface abstract Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/nativead/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnconfirmedClickListener"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract b()V
.end method
