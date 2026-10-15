###### Class com.google.android.gms.internal.ads.zzgeo (com.google.android.gms.internal.ads.zzgeo)
.class public final Lcom/google/android/gms/internal/ads/zzgeo;
.super Lcom/google/android/gms/internal/ads/zzggb;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgex;

.field private final b:Lcom/google/android/gms/internal/ads/zzgok;

.field private final c:Lcom/google/android/gms/internal/ads/zzgoj;

.field private final d:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/zzgok;Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/zzgen;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzggb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgeo;->a:Lcom/google/android/gms/internal/ads/zzgex;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgeo;->b:Lcom/google/android/gms/internal/ads/zzgok;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgeo;->c:Lcom/google/android/gms/internal/ads/zzgoj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgeo;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/android/gms/internal/ads/zzggc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeo;->a:Lcom/google/android/gms/internal/ads/zzgex;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzgoj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeo;->c:Lcom/google/android/gms/internal/ads/zzgoj;

    return-object v0
.end method
