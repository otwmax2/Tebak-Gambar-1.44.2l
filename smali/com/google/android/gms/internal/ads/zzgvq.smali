###### Class com.google.android.gms.internal.ads.zzgvq (com.google.android.gms.internal.ads.zzgvq)
.class public final Lcom/google/android/gms/internal/ads/zzgvq;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgvq;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:Z

.field private zzh:I

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgvq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgvq;->zzb:Lcom/google/android/gms/internal/ads/zzgvq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgvq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzgvp;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvq;->zzb:Lcom/google/android/gms/internal/ads/zzgvq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgvp;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzgvq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgvq;->zzb:Lcom/google/android/gms/internal/ads/zzgvq;

    return-object v0
.end method

.method static synthetic K(Lcom/google/android/gms/internal/ads/zzgvq;Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zze:Ljava/lang/String;

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/zzgvq;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zzf:J

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/zzgvq;Z)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zzd:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzgvq;->zzg:Z

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_52

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgvq;->zzb:Lcom/google/android/gms/internal/ads/zzgvq;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvp;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgvp;-><init>(Lcom/google/android/gms/internal/ads/zzgub;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgvq;-><init>()V

    return-object p1

    :cond_22
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzd"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    .line 3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgvr;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgvq;->zzb:Lcom/google/android/gms/internal/ads/zzgvq;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1007\u0002\u0004\u100c\u0003\u0005\u1008\u0004\u0006\u1008\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_52
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
