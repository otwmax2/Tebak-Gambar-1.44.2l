###### Class com.google.android.gms.internal.ads.zzabu (com.google.android.gms.internal.ads.zzabu)
.class final Lcom/google/android/gms/internal/ads/zzabu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabk;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabu;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzabu;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->i()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfnh;->c:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->F(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzabu;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const v0, 0x6e727473

    return v0
.end method
