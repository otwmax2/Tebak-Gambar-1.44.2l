###### Class com.google.android.gms.internal.ads.zzgea (com.google.android.gms.internal.ads.zzgea)
.class public final Lcom/google/android/gms/internal/ads/zzgea;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgeb;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgoj;

.field private final b:Lcom/google/android/gms/internal/ads/zzgld;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgld;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgea;->b:Lcom/google/android/gms/internal/ads/zzgld;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgld;->N()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgek;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgoj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgea;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzgld;)Lcom/google/android/gms/internal/ads/zzgea;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgea;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgea;-><init>(Lcom/google/android/gms/internal/ads/zzgld;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/ads/zzgld;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgea;->b:Lcom/google/android/gms/internal/ads/zzgld;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzgoj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgea;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    return-object v0
.end method
