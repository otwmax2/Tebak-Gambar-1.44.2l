###### Class com.google.android.gms.internal.ads.zzabq (com.google.android.gms.internal.ads.zzabq)
.class final Lcom/google/android/gms/internal/ads/zzabq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabk;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method private constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzabq;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzabq;->b:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzabq;->c:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzabq;->d:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzabq;->e:I

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzabq;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v1

    const/16 v0, 0xc

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v4

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v5

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->o()I

    move-result v6

    const/16 v0, 0x8

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->g(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzabq;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzabq;-><init>(IIIIII)V

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const v0, 0x68727473

    return v0
.end method
