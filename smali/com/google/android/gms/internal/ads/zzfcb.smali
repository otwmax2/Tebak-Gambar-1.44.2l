###### Class com.google.android.gms.internal.ads.zzfcb (com.google.android.gms.internal.ads.zzfcb)
.class final Lcom/google/android/gms/internal/ads/zzfcb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzfcc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfcc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfcb;->a:Lcom/google/android/gms/internal/ads/zzfcc;

    return-void
.end method

.method static bridge synthetic a()Lcom/google/android/gms/internal/ads/zzfcc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfcb;->a:Lcom/google/android/gms/internal/ads/zzfcc;

    return-object v0
.end method
