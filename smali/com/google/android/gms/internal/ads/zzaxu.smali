###### Class com.google.android.gms.internal.ads.zzaxu (com.google.android.gms.internal.ads.zzaxu)
.class public final Lcom/google/android/gms/internal/ads/zzaxu;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzaxu;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzaze;

.field private zzj:Lcom/google/android/gms/internal/ads/zzgqu;

.field private zzk:Lcom/google/android/gms/internal/ads/zzaxm;

.field private zzl:Lcom/google/android/gms/internal/ads/zzaxp;

.field private zzm:Lcom/google/android/gms/internal/ads/zzayi;

.field private zzn:Lcom/google/android/gms/internal/ads/zzawq;

.field private zzo:Lcom/google/android/gms/internal/ads/zzays;

.field private zzp:Lcom/google/android/gms/internal/ads/zzazz;

.field private zzq:Lcom/google/android/gms/internal/ads/zzawz;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaxu;->zzb:Lcom/google/android/gms/internal/ads/zzaxu;

    const-class v1, Lcom/google/android/gms/internal/ads/zzaxu;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzf:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzh:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->s()Lcom/google/android/gms/internal/ads/zzgqu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzj:Lcom/google/android/gms/internal/ads/zzgqu;

    return-void
.end method

.method public static K()Lcom/google/android/gms/internal/ads/zzaxt;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxu;->zzb:Lcom/google/android/gms/internal/ads/zzaxu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaxt;

    return-object v0
.end method

.method static synthetic L()Lcom/google/android/gms/internal/ads/zzaxu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxu;->zzb:Lcom/google/android/gms/internal/ads/zzaxu;

    return-object v0
.end method

.method static synthetic N(Lcom/google/android/gms/internal/ads/zzaxu;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic O(Lcom/google/android/gms/internal/ads/zzaxu;Ljava/lang/Iterable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzj:Lcom/google/android/gms/internal/ads/zzgqu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgqv;->a()Z

    move-result v1

    if-nez v1, :cond_18

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0xa

    goto :goto_12

    :cond_11
    add-int/2addr v1, v1

    .line 3
    :goto_12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqu;->h(I)Lcom/google/android/gms/internal/ads/zzgqu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzj:Lcom/google/android/gms/internal/ads/zzgqu;

    :cond_18
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzj:Lcom/google/android/gms/internal/ads/zzgqu;

    .line 4
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgon;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/zzaxu;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->s()Lcom/google/android/gms/internal/ads/zzgqu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzj:Lcom/google/android/gms/internal/ads/zzgqu;

    return-void
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/zzaxu;Lcom/google/android/gms/internal/ads/zzaxm;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzk:Lcom/google/android/gms/internal/ads/zzaxm;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    return-void
.end method

.method static synthetic R(Lcom/google/android/gms/internal/ads/zzaxu;Lcom/google/android/gms/internal/ads/zzawq;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzn:Lcom/google/android/gms/internal/ads/zzawq;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    return-void
.end method

.method static synthetic S(Lcom/google/android/gms/internal/ads/zzaxu;Lcom/google/android/gms/internal/ads/zzays;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzo:Lcom/google/android/gms/internal/ads/zzays;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    return-void
.end method

.method static synthetic T(Lcom/google/android/gms/internal/ads/zzaxu;Lcom/google/android/gms/internal/ads/zzazz;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzp:Lcom/google/android/gms/internal/ads/zzazz;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    return-void
.end method

.method static synthetic V(Lcom/google/android/gms/internal/ads/zzaxu;Lcom/google/android/gms/internal/ads/zzawz;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzq:Lcom/google/android/gms/internal/ads/zzawz;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzd:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_7c

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxu;->zzb:Lcom/google/android/gms/internal/ads/zzaxu;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxt;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaxt;-><init>(Lcom/google/android/gms/internal/ads/zzawl;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaxu;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaxu;-><init>()V

    return-object p1

    :cond_22
    const/16 p1, 0xf

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

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxr;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzq"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxu;->zzb:Lcom/google/android/gms/internal/ads/zzaxu;

    const-string p3, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\t\u1004\u0000\n\u1008\u0001\u000b\u100b\u0002\u000c\u100c\u0003\r\u1009\u0004\u000e\u0015\u000f\u1009\u0005\u0010\u1009\u0006\u0011\u1009\u0007\u0012\u1009\u0008\u0013\u1009\t\u0014\u1009\n\u0015\u1009\u000b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_7c
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final I()Lcom/google/android/gms/internal/ads/zzawq;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzn:Lcom/google/android/gms/internal/ads/zzawq;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawq;->J()Lcom/google/android/gms/internal/ads/zzawq;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final J()Lcom/google/android/gms/internal/ads/zzaxm;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzk:Lcom/google/android/gms/internal/ads/zzaxm;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxm;->J()Lcom/google/android/gms/internal/ads/zzaxm;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxu;->zzf:Ljava/lang/String;

    return-object v0
.end method
