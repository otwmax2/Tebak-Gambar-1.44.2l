###### Class com.google.android.gms.internal.ads.zzayn (com.google.android.gms.internal.ads.zzayn)
.class public final Lcom/google/android/gms/internal/ads/zzayn;
.super Lcom/google/android/gms/internal/ads/zzgqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgqs;

.field private static final zzd:Lcom/google/android/gms/internal/ads/zzayn;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:I

.field private zzh:J

.field private zzi:J

.field private zzj:Lcom/google/android/gms/internal/ads/zzgqr;

.field private zzk:Lcom/google/android/gms/internal/ads/zzayi;

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzayl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzayl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayn;->zzb:Lcom/google/android/gms/internal/ads/zzgqs;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzayn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayn;->zzd:Lcom/google/android/gms/internal/ads/zzayn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzayn;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqm;->A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->q()Lcom/google/android/gms/internal/ads/zzgqr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzj:Lcom/google/android/gms/internal/ads/zzgqr;

    return-void
.end method

.method static synthetic I(Lcom/google/android/gms/internal/ads/zzayn;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzm:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    return-void
.end method

.method static synthetic J(Lcom/google/android/gms/internal/ads/zzayn;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzn:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    return-void
.end method

.method static synthetic K(Lcom/google/android/gms/internal/ads/zzayn;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzp:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    return-void
.end method

.method public static Q()Lcom/google/android/gms/internal/ads/zzaym;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayn;->zzd:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->h()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaym;

    return-object v0
.end method

.method static synthetic R()Lcom/google/android/gms/internal/ads/zzayn;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayn;->zzd:Lcom/google/android/gms/internal/ads/zzayn;

    return-object v0
.end method

.method public static S([B)Lcom/google/android/gms/internal/ads/zzayn;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayn;->zzd:Lcom/google/android/gms/internal/ads/zzayn;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzgqm;->m(Lcom/google/android/gms/internal/ads/zzgqm;[B)Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzayn;

    return-object p0
.end method

.method static synthetic W(Lcom/google/android/gms/internal/ads/zzayn;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzf:J

    return-void
.end method

.method static synthetic X(Lcom/google/android/gms/internal/ads/zzayn;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzh:J

    return-void
.end method

.method static synthetic Y(Lcom/google/android/gms/internal/ads/zzayn;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzi:J

    return-void
.end method

.method static synthetic Z(Lcom/google/android/gms/internal/ads/zzayn;Ljava/lang/Iterable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzj:Lcom/google/android/gms/internal/ads/zzgqr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgqv;->a()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->r(Lcom/google/android/gms/internal/ads/zzgqr;)Lcom/google/android/gms/internal/ads/zzgqr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzj:Lcom/google/android/gms/internal/ads/zzgqr;

    .line 3
    :cond_e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzj:Lcom/google/android/gms/internal/ads/zzgqr;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxc;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqr;->j0(I)V

    goto :goto_12

    :cond_28
    return-void
.end method

.method static synthetic a0(Lcom/google/android/gms/internal/ads/zzayn;Lcom/google/android/gms/internal/ads/zzayi;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzk:Lcom/google/android/gms/internal/ads/zzayi;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    return-void
.end method

.method static synthetic b0(Lcom/google/android/gms/internal/ads/zzayn;I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzo:I

    return-void
.end method

.method static synthetic c0(Lcom/google/android/gms/internal/ads/zzayn;Lcom/google/android/gms/internal/ads/zzayr;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayr;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzq:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    return-void
.end method

.method static synthetic d0(Lcom/google/android/gms/internal/ads/zzayn;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzr:J

    return-void
.end method

.method static synthetic j0(Lcom/google/android/gms/internal/ads/zzayn;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    return-void
.end method

.method static synthetic k0(Lcom/google/android/gms/internal/ads/zzayn;I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzl:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zze:I

    return-void
.end method


# virtual methods
.method protected final F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_9c

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzayn;->zzd:Lcom/google/android/gms/internal/ads/zzayn;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaym;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaym;-><init>(Lcom/google/android/gms/internal/ads/zzawl;)V

    return-object p1

    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayn;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzayn;-><init>()V

    return-object p1

    :cond_22
    const/16 p1, 0x15

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxr;->a:Lcom/google/android/gms/internal/ads/zzgqq;

    aput-object p2, p1, v1

    const-string v1, "zzh"

    aput-object v1, p1, v0

    const-string v0, "zzi"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    const-string v0, "zzj"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxc;->e()Lcom/google/android/gms/internal/ads/zzgqq;

    move-result-object v0

    aput-object v0, p1, p3

    const/16 p3, 0x8

    const-string v0, "zzk"

    aput-object v0, p1, p3

    const/16 p3, 0x9

    const-string v0, "zzl"

    aput-object v0, p1, p3

    const/16 p3, 0x11

    const/16 v0, 0xe

    const/16 v1, 0xc

    const/16 v2, 0xa

    aput-object p2, p1, v2

    const/16 v2, 0xb

    const-string v3, "zzm"

    aput-object v3, p1, v2

    aput-object p2, p1, v1

    const/16 v1, 0xd

    const-string v2, "zzn"

    aput-object v2, p1, v1

    aput-object p2, p1, v0

    const/16 v0, 0xf

    const-string v1, "zzo"

    aput-object v1, p1, v0

    const/16 v0, 0x10

    const-string v1, "zzp"

    aput-object v1, p1, v0

    aput-object p2, p1, p3

    const/16 p2, 0x12

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayr;->e()Lcom/google/android/gms/internal/ads/zzgqq;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzr"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzayn;->zzd:Lcom/google/android/gms/internal/ads/zzayn;

    const-string p3, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u100c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u001e\u0006\u1009\u0004\u0007\u100c\u0005\u0008\u100c\u0006\t\u100c\u0007\n\u1004\u0008\u000b\u100c\t\u000c\u100c\n\r\u1002\u000b"

    .line 6
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_9c
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final L()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzo:I

    return v0
.end method

.method public final M()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzi:J

    return-wide v0
.end method

.method public final N()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzh:J

    return-wide v0
.end method

.method public final O()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzf:J

    return-wide v0
.end method

.method public final P()Lcom/google/android/gms/internal/ads/zzayi;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzk:Lcom/google/android/gms/internal/ads/zzayi;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayi;->K()Lcom/google/android/gms/internal/ads/zzayi;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final T()Lcom/google/android/gms/internal/ads/zzayr;
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzq:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayr;->c(I)Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayr;->p:Lcom/google/android/gms/internal/ads/zzayr;

    :cond_a
    return-object v0
.end method

.method public final V()Ljava/util/List;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzj:Lcom/google/android/gms/internal/ads/zzgqr;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzayn;->zzb:Lcom/google/android/gms/internal/ads/zzgqs;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgqt;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgqs;)V

    return-object v0
.end method

.method public final e0()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzm:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxs;->a(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final f0()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzn:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxs;->a(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final g0()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzp:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxs;->a(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final h0()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxs;->a(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public final i0()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayn;->zzl:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxs;->a(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method
