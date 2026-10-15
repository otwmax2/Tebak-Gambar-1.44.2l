###### Class com.google.android.gms.internal.measurement.zzfq (com.google.android.gms.internal.measurement.zzfq)
.class public final Lcom/google/android/gms/internal/measurement/zzfq;
.super Lcom/google/android/gms/internal/measurement/zzkc;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlk;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzfq;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:Lcom/google/android/gms/internal/measurement/zzfq;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkc;->s(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkc;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>()V

    return-void
.end method

.method public static w()Lcom/google/android/gms/internal/measurement/zzfp;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkc;->i()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfp;

    return-object v0
.end method

.method static synthetic x()Lcom/google/android/gms/internal/measurement/zzfq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfq;->zza:Lcom/google/android/gms/internal/measurement/zzfq;

    return-object v0
.end method

.method static synthetic y(Lcom/google/android/gms/internal/measurement/zzfq;I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzf:I

    return-void
.end method

.method static synthetic z(Lcom/google/android/gms/internal/measurement/zzfq;J)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zze:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzg:J

    return-void
.end method


# virtual methods
.method public final A()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method protected final t(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_3a

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    if-eq p1, p3, :cond_1c

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_16

    const/4 p2, 0x5

    if-eq p1, p2, :cond_13

    return-object p3

    .line 1
    :cond_13
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfq;->zza:Lcom/google/android/gms/internal/measurement/zzfq;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfp;

    .line 2
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/measurement/zzfp;-><init>(Lcom/google/android/gms/internal/measurement/zzfj;)V

    return-object p1

    .line 3
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfq;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zze"

    aput-object v1, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v0

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfq;->zza:Lcom/google/android/gms/internal/measurement/zzfq;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzkc;->r(Lcom/google/android/gms/internal/measurement/zzlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3a
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final u()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzf:I

    return v0
.end method

.method public final v()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzfq;->zzg:J

    return-wide v0
.end method
