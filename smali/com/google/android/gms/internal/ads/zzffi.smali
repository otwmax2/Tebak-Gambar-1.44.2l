###### Class com.google.android.gms.internal.ads.zzffi (com.google.android.gms.internal.ads.zzffi)
.class public final Lcom/google/android/gms/internal/ads/zzffi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/zzffj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzffj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzffj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzffi;->a:Lcom/google/android/gms/internal/ads/zzffj;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzffi;->a:Lcom/google/android/gms/internal/ads/zzffj;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzffj;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzffi;->a:Lcom/google/android/gms/internal/ads/zzffj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffj;->b()Z

    move-result v0

    return v0
.end method
