###### Class com.google.android.gms.internal.firebase_auth.zzgv (com.google.android.gms.internal.firebase_auth.zzgv)
.class public abstract Lcom/google/android/gms/internal/firebase_auth/zzgv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final p:Lcom/google/android/gms/internal/firebase_auth/zzgv;

.field private static final q:Lcom/google/android/gms/internal/firebase_auth/zzhb;

.field private static final r:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/firebase_auth/zzgv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhf;

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzii;->c:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhf;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgv;->p:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzgq;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhe;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzgu;)V

    goto :goto_1b

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzgz;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzgu;)V

    :goto_1b
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgv;->q:Lcom/google/android/gms/internal/firebase_auth/zzhb;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgv;->r:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgv;->o:I

    return-void
.end method

.method static synthetic i(B)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->p(B)I

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_auth/zzgv;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhf;

    sget-object v1, Lcom/google/android/gms/internal/firebase_auth/zzii;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzhf;-><init>([B)V

    return-object v0
.end method

.method private static p(B)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static q(III)I
    .registers 6

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_6e

    if-ltz p0, :cond_50

    if-ge p1, p0, :cond_2f

    .line 1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Beginning index larger than ending index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_2f
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "End index: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_50
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Beginning index: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    return v0
.end method

.method static s(I)Lcom/google/android/gms/internal/firebase_auth/zzhd;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzhd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhd;-><init>(ILcom/google/android/gms/internal/firebase_auth/zzgu;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract c(I)B
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract g()I
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgv;->o:I

    if-nez v0, :cond_12

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->g()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->j(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 4
    :cond_10
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgv;->o:I

    :cond_12
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase_auth/zzgu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase_auth/zzgu;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzgv;)V

    return-object v0
.end method

.method protected abstract j(III)I
.end method

.method public abstract k(II)Lcom/google/android/gms/internal/firebase_auth/zzgv;
.end method

.method protected abstract m(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract n(Lcom/google/android/gms/internal/firebase_auth/zzgs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract o(I)B
.end method

.method public final r()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzii;->a:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->g()I

    move-result v1

    if-nez v1, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->m(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final t()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzgv;->o:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->g()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_28

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase_auth/zzkr;->a(Lcom/google/android/gms/internal/firebase_auth/zzgv;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3c

    :cond_28
    const/16 v2, 0x2f

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->k(II)Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase_auth/zzkr;->a(Lcom/google/android/gms/internal/firebase_auth/zzgv;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3c
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    .line 5
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
