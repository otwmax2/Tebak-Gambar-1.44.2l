###### Class com.google.android.gms.internal.ads.zzays (com.google.android.gms.internal.ads.zzays)
.class public final Lcom/google/android/gms/internal/ads/zzays;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzays;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzgqv;

.field private zzf:I

.field private zzg:I

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:J

.field private zzl:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzays;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzays;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzays;->zzb:Lcom/google/android/gms/internal/ads/zzays;

    const-class v1, Lcom/google/android/gms/internal/ads/zzays;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->u()Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zze:Lcom/google/android/gms/internal/ads/zzgqv;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzj:Ljava/lang/String;

    return-void
.end method

.method public static I()Lcom/google/android/gms/internal/ads/zzayo;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzays;->zzb:Lcom/google/android/gms/internal/ads/zzays;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzayo;

    return-object v0
.end method

.method static synthetic J()Lcom/google/android/gms/internal/ads/zzays;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzays;->zzb:Lcom/google/android/gms/internal/ads/zzays;

    return-object v0
.end method

.method static synthetic K(Lcom/google/android/gms/internal/ads/zzays;Ljava/lang/Iterable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zze:Lcom/google/android/gms/internal/ads/zzgqv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgqv;->a()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->v(Lcom/google/android/gms/internal/ads/zzgqv;)Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zze:Lcom/google/android/gms/internal/ads/zzgqv;

    :cond_e
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzays;->zze:Lcom/google/android/gms/internal/ads/zzgqv;

    .line 3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgon;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic L(Lcom/google/android/gms/internal/ads/zzays;I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzays;->zzf:I

    return-void
.end method

.method static synthetic M(Lcom/google/android/gms/internal/ads/zzays;I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzays;->zzg:I

    return-void
.end method

.method static synthetic N(Lcom/google/android/gms/internal/ads/zzays;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzays;->zzh:J

    return-void
.end method

.method static synthetic O(Lcom/google/android/gms/internal/ads/zzays;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzays;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic P(Lcom/google/android/gms/internal/ads/zzays;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzays;->zzj:Ljava/lang/String;

    return-void
.end method

.method static synthetic Q(Lcom/google/android/gms/internal/ads/zzays;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzays;->zzk:J

    return-void
.end method

.method static synthetic R(Lcom/google/android/gms/internal/ads/zzays;I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzays;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzays;->zzl:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_5e

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzays;->zzb:Lcom/google/android/gms/internal/ads/zzays;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayo;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzayo;-><init>(Lcom/google/android/gms/internal/ads/zzawl;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzays;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzays;-><init>()V

    return-object p1

    :cond_22
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzd"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    .line 4
    const-class p2, Lcom/google/android/gms/internal/ads/zzayn;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-string p2, "zzh"

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

    sget-object p2, Lcom/google/android/gms/internal/ads/zzays;->zzb:Lcom/google/android/gms/internal/ads/zzays;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u001b\u0002\u1004\u0000\u0003\u1004\u0001\u0004\u1002\u0002\u0005\u1008\u0003\u0006\u1008\u0004\u0007\u1002\u0005\u0008\u1004\u0006"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_5e
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
