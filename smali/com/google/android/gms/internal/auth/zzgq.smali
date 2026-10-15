###### Class com.google.android.gms.internal.auth.zzgq (com.google.android.gms.internal.auth.zzgq)
.class public final Lcom/google/android/gms/internal/auth/zzgq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# static fields
.field private static final e:Lcom/google/android/gms/internal/auth/zzgq;


# instance fields
.field private a:I

.field private b:[I

.field private c:[Ljava/lang/Object;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgq;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    .line 1
    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgq;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/auth/zzgq;->e:Lcom/google/android/gms/internal/auth/zzgq;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/auth/zzgq;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzgq;->b:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/zzgq;->c:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/auth/zzgq;->d:Z

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/auth/zzgq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/auth/zzgq;->e:Lcom/google/android/gms/internal/auth/zzgq;

    return-object v0
.end method

.method static b(Lcom/google/android/gms/internal/auth/zzgq;Lcom/google/android/gms/internal/auth/zzgq;)Lcom/google/android/gms/internal/auth/zzgq;
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    iget v1, p1, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgq;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/auth/zzgq;->b:[I

    iget v3, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    iget v4, p1, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzgq;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/auth/zzgq;->c:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    iget p1, p1, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/auth/zzgq;

    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/auth/zzgq;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method static c()Lcom/google/android/gms/internal/auth/zzgq;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/auth/zzgq;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1
    invoke-direct {v0, v3, v2, v1, v4}, Lcom/google/android/gms/internal/auth/zzgq;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public final d()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzgq;->d:Z

    return-void
.end method

.method final e(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgq;->b:[I

    .line 1
    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzgq;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/auth/zzfs;->b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1
    :cond_8
    instance-of v2, p1, Lcom/google/android/gms/internal/auth/zzgq;

    if-nez v2, :cond_d

    return v1

    .line 2
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/auth/zzgq;

    iget v2, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    if-ne v2, v3, :cond_3d

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzgq;->b:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/auth/zzgq;->b:[I

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v2, :cond_26

    .line 3
    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_23

    goto :goto_3d

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_26
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzgq;->c:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/auth/zzgq;->c:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_3c

    .line 4
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_3c
    return v0

    :cond_3d
    :goto_3d
    return v1
.end method

.method final f(ILjava/lang/Object;)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzgq;->d:Z

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgq;->b:[I

    .line 1
    array-length v2, v1

    if-ne v0, v2, :cond_22

    const/4 v2, 0x4

    if-ge v0, v2, :cond_11

    const/16 v2, 0x8

    goto :goto_13

    :cond_11
    shr-int/lit8 v2, v0, 0x1

    :goto_13
    add-int/2addr v0, v2

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/auth/zzgq;->b:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzgq;->c:[Ljava/lang/Object;

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzgq;->c:[Ljava/lang/Object;

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgq;->b:[I

    iget v1, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    .line 4
    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/auth/zzgq;->c:[Ljava/lang/Object;

    .line 5
    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    return-void

    :cond_31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 6
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final hashCode()I
    .registers 9

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzgq;->b:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_e
    if-ge v5, v0, :cond_18

    mul-int/lit8 v6, v6, 0x1f

    .line 1
    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_18
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzgq;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/auth/zzgq;->a:I

    :goto_1f
    if-ge v3, v2, :cond_2d

    mul-int/lit8 v4, v4, 0x1f

    .line 2
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_2d
    add-int/2addr v1, v4

    return v1
.end method
