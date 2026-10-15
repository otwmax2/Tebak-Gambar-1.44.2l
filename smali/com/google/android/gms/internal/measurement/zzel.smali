###### Class com.google.android.gms.internal.measurement.zzel (com.google.android.gms.internal.measurement.zzel)
.class public final Lcom/google/android/gms/internal/measurement/zzel;
.super Lcom/google/android/gms/internal/measurement/zzkc;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlk;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzel;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/measurement/zzex;

.field private zzg:Lcom/google/android/gms/internal/measurement/zzeq;

.field private zzh:Z

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzel;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzel;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzel;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzel;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkc;->s(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkc;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic u()Lcom/google/android/gms/internal/measurement/zzel;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzel;

    return-object v0
.end method

.method public static v()Lcom/google/android/gms/internal/measurement/zzel;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzel;

    return-object v0
.end method

.method static synthetic z(Lcom/google/android/gms/internal/measurement/zzel;Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzh:Z

    return v0
.end method

.method public final B()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final E()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method protected final t(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzel;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzek;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzek;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    return-object p1

    .line 3
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzel;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzel;-><init>()V

    return-object p1

    :cond_22
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zze"

    aput-object v3, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzel;->zza:Lcom/google/android/gms/internal/measurement/zzel;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzkc;->r(Lcom/google/android/gms/internal/measurement/zzlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_42
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final w()Lcom/google/android/gms/internal/measurement/zzeq;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzg:Lcom/google/android/gms/internal/measurement/zzeq;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeq;->v()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final x()Lcom/google/android/gms/internal/measurement/zzex;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzf:Lcom/google/android/gms/internal/measurement/zzex;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzex;->w()Lcom/google/android/gms/internal/measurement/zzex;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzel;->zzi:Ljava/lang/String;

    return-object v0
.end method
