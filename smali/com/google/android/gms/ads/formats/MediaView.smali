###### Class com.google.android.gms.ads.formats.MediaView (com.google.android.gms.ads.formats.MediaView)
.class public Lcom/google/android/gms/ads/formats/MediaView;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private o:Lcom/google/android/gms/ads/MediaContent;

.field private p:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setImageScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/MediaView;->p:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/MediaView;->o:Lcom/google/android/gms/ads/MediaContent;

    return-void
.end method
