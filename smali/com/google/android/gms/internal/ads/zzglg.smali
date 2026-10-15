###### Class com.google.android.gms.internal.ads.zzglg (com.google.android.gms.internal.ads.zzglg)
.class public final Lcom/google/android/gms/internal/ads/zzglg;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzglg;


# instance fields
.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Z

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzglg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzglg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzglg;->zzb:Lcom/google/android/gms/internal/ads/zzglg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzglg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzglg;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzglg;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzglg;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzglg;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzglg;->zzb:Lcom/google/android/gms/internal/ads/zzglg;

    return-object v0
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_42

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_22

    if-eq p1, v1, :cond_1c

    const/4 p2, 0x0

    if-eq p1, v0, :cond_16

    if-eq p1, p3, :cond_13

    return-object p2

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzglg;->zzb:Lcom/google/android/gms/internal/ads/zzglg;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzglf;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzglf;-><init>(Lcom/google/android/gms/internal/ads/zzgle;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzglg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzglg;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzd"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzglg;->zzb:Lcom/google/android/gms/internal/ads/zzglg;

    const-string p3, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_42
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final I()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzglg;->zzf:I

    return v0
.end method

.method public final K()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglg;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglg;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzglg;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzglg;->zzg:Z

    return v0
.end method
