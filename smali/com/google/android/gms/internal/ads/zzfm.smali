###### Class com.google.android.gms.internal.ads.zzfm (com.google.android.gms.internal.ads.zzfm)
.class public final Lcom/google/android/gms/internal/ads/zzfm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzff;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/zzff;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfo;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfm;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfm;->b:Lcom/google/android/gms/internal/ads/zzff;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzfg;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfm;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfm;->b:Lcom/google/android/gms/internal/ads/zzff;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfo;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfo;->f()Lcom/google/android/gms/internal/ads/zzft;

    move-result-object v2

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfg;)V

    return-object v0
.end method
