###### Class com.google.android.gms.internal.ads.zzawq (com.google.android.gms.internal.ads.zzawq)
.class public final Lcom/google/android/gms/internal/ads/zzawq;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzawq;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzaxg;

.field private zzh:Lcom/google/android/gms/internal/ads/zzaxi;

.field private zzi:Lcom/google/android/gms/internal/ads/zzgqv;

.field private zzj:Lcom/google/android/gms/internal/ads/zzaxk;

.field private zzk:Lcom/google/android/gms/internal/ads/zzayu;

.field private zzl:Lcom/google/android/gms/internal/ads/zzayk;

.field private zzm:Lcom/google/android/gms/internal/ads/zzaxy;

.field private zzn:Lcom/google/android/gms/internal/ads/zzaya;

.field private zzo:Lcom/google/android/gms/internal/ads/zzgqv;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzawq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zzb:Lcom/google/android/gms/internal/ads/zzawq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzawq;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzf:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->u()Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzi:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->u()Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzo:Lcom/google/android/gms/internal/ads/zzgqv;

    return-void
.end method

.method static synthetic I()Lcom/google/android/gms/internal/ads/zzawq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zzb:Lcom/google/android/gms/internal/ads/zzawq;

    return-object v0
.end method

.method public static J()Lcom/google/android/gms/internal/ads/zzawq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzawq;->zzb:Lcom/google/android/gms/internal/ads/zzawq;

    return-object v0
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/zzawq;Lcom/google/android/gms/internal/ads/zzawo;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawo;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzd:I

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/zzawq;Lcom/google/android/gms/internal/ads/zzaxi;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzh:Lcom/google/android/gms/internal/ads/zzaxi;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzd:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzd:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_84

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzawq;->zzb:Lcom/google/android/gms/internal/ads/zzawq;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawp;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzawp;-><init>(Lcom/google/android/gms/internal/ads/zzawl;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzawq;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzawq;-><init>()V

    return-object p1

    :cond_22
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzd"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawo;->e()Lcom/google/android/gms/internal/ads/zzgqq;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxr;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/google/android/gms/internal/ads/zzaxe;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lcom/google/android/gms/internal/ads/zzazg;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzawq;->zzb:Lcom/google/android/gms/internal/ads/zzawq;

    const-string p3, "\u0001\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007\u100c\u0000\u0008\u100c\u0001\t\u1009\u0002\n\u1009\u0003\u000b\u001b\u000c\u1009\u0004\r\u1009\u0005\u000e\u1009\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u001b"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_84
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final K()Lcom/google/android/gms/internal/ads/zzaxi;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzh:Lcom/google/android/gms/internal/ads/zzaxi;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxi;->J()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v0

    :cond_8
    return-object v0
.end method
