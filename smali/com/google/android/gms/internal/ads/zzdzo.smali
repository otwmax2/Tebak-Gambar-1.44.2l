###### Class com.google.android.gms.internal.ads.zzdzo (com.google.android.gms.internal.ads.zzdzo)
.class public Lcom/google/android/gms/internal/ads/zzdzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/util/zzg;

.field protected final b:Lcom/google/android/gms/internal/ads/zzdzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzo;->b:Lcom/google/android/gms/internal/ads/zzdzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzo;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method


# virtual methods
.method protected final a()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzo;->a:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->g0()Z

    move-result v0

    return v0
.end method
