###### Class com.google.android.gms.internal.ads.zzgcg (com.google.android.gms.internal.ads.zzgcg)
.class final Lcom/google/android/gms/internal/ads/zzgcg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbv;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgoj;

.field private final b:Lcom/google/android/gms/internal/ads/zzgoj;


# direct methods
.method private constructor <init>([B[B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgoj;->b([B)Lcom/google/android/gms/internal/ads/zzgoj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcg;->a:Lcom/google/android/gms/internal/ads/zzgoj;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgoj;->b([B)Lcom/google/android/gms/internal/ads/zzgoj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcg;->b:Lcom/google/android/gms/internal/ads/zzgoj;

    return-void
.end method

.method static a([B)Lcom/google/android/gms/internal/ads/zzgcg;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcg;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgoh;->c([B)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgcg;-><init>([B[B)V

    return-object v0
.end method
