###### Class com.google.android.gms.internal.measurement.zzfo (com.google.android.gms.internal.measurement.zzfo)
.class public final Lcom/google/android/gms/internal/measurement/zzfo;
.super Lcom/google/android/gms/internal/measurement/zzkc;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlk;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzfo;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/measurement/zzgh;

.field private zzh:Lcom/google/android/gms/internal/measurement/zzgh;

.field private zzi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzkc;->s(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzkc;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzkc;-><init>()V

    return-void
.end method

.method static synthetic A(Lcom/google/android/gms/internal/measurement/zzfo;Lcom/google/android/gms/internal/measurement/zzgh;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzg:Lcom/google/android/gms/internal/measurement/zzgh;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    return-void
.end method

.method static synthetic B(Lcom/google/android/gms/internal/measurement/zzfo;Lcom/google/android/gms/internal/measurement/zzgh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzh:Lcom/google/android/gms/internal/measurement/zzgh;

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    return-void
.end method

.method static synthetic C(Lcom/google/android/gms/internal/measurement/zzfo;Z)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzi:Z

    return-void
.end method

.method public static v()Lcom/google/android/gms/internal/measurement/zzfn;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzkc;->i()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfn;

    return-object v0
.end method

.method static synthetic w()Lcom/google/android/gms/internal/measurement/zzfo;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    return-object v0
.end method

.method static synthetic z(Lcom/google/android/gms/internal/measurement/zzfo;I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:I

    return-void
.end method


# virtual methods
.method public final D()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzi:Z

    return v0
.end method

.method public final E()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final F()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final G()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
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
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    return-object p1

    :cond_16
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfn;

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzfn;-><init>(Lcom/google/android/gms/internal/measurement/zzfj;)V

    return-object p1

    .line 3
    :cond_1c
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzfo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzfo;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzfo;->zza:Lcom/google/android/gms/internal/measurement/zzfo;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1007\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzkc;->r(Lcom/google/android/gms/internal/measurement/zzlj;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_42
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final u()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzf:I

    return v0
.end method

.method public final x()Lcom/google/android/gms/internal/measurement/zzgh;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzg:Lcom/google/android/gms/internal/measurement/zzgh;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->B()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method public final y()Lcom/google/android/gms/internal/measurement/zzgh;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfo;->zzh:Lcom/google/android/gms/internal/measurement/zzgh;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgh;->B()Lcom/google/android/gms/internal/measurement/zzgh;

    move-result-object v0

    :cond_8
    return-object v0
.end method
