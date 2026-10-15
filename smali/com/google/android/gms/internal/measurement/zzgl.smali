###### Class com.google.android.gms.internal.measurement.zzgl (com.google.android.gms.internal.measurement.zzgl)
.class public final Lcom/google/android/gms/internal/measurement/zzgl;
.super Lcom/google/android/gms/internal/measurement/zzkc;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlk;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzgl;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:F

.field private zzk:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgl;->zza:Lcom/google/android/gms/internal/measurement/zzgl;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkc;->s(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkc;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic B(Lcom/google/android/gms/internal/measurement/zzgl;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzf:J

    return-void
.end method

.method static synthetic C(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic D(Lcom/google/android/gms/internal/measurement/zzgl;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic E(Lcom/google/android/gms/internal/measurement/zzgl;)V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgl;->zza:Lcom/google/android/gms/internal/measurement/zzgl;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzgl;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic F(Lcom/google/android/gms/internal/measurement/zzgl;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzi:J

    return-void
.end method

.method static synthetic G(Lcom/google/android/gms/internal/measurement/zzgl;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzi:J

    return-void
.end method

.method static synthetic H(Lcom/google/android/gms/internal/measurement/zzgl;D)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzk:D

    return-void
.end method

.method static synthetic I(Lcom/google/android/gms/internal/measurement/zzgl;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzk:D

    return-void
.end method

.method public static x()Lcom/google/android/gms/internal/measurement/zzgk;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgl;->zza:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkc;->i()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzgk;

    return-object v0
.end method

.method static synthetic y()Lcom/google/android/gms/internal/measurement/zzgl;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzgl;->zza:Lcom/google/android/gms/internal/measurement/zzgl;

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final J()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final K()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final L()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final N()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method protected final t(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4c

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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzgl;->zza:Lcom/google/android/gms/internal/measurement/zzgl;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgk;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzgk;-><init>(Lcom/google/android/gms/internal/measurement/zzfj;)V

    return-object p1

    .line 3
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzgl;-><init>()V

    return-object p1

    :cond_22
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    const-string p2, "zzj"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzgl;->zza:Lcom/google/android/gms/internal/measurement/zzgl;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzkc;->r(Lcom/google/android/gms/internal/measurement/zzlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4c
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final u()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzk:D

    return-wide v0
.end method

.method public final v()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzi:J

    return-wide v0
.end method

.method public final w()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzf:J

    return-wide v0
.end method

.method public final z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgl;->zzg:Ljava/lang/String;

    return-object v0
.end method
