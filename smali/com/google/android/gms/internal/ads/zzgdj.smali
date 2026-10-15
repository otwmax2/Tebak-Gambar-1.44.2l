###### Class com.google.android.gms.internal.ads.zzgdj (com.google.android.gms.internal.ads.zzgdj)
.class public Lcom/google/android/gms/internal/ads/zzgdj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgoj;

.field private final b:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdi;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdj;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgdj;->b:Ljava/lang/Class;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzgdh;Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgdj;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdg;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzgdg;-><init>(Lcom/google/android/gms/internal/ads/zzgoj;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdh;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/zzgoj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdj;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdj;->b:Ljava/lang/Class;

    return-object v0
.end method
