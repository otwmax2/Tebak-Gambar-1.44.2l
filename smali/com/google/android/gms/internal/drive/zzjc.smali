###### Class com.google.android.gms.internal.drive.zzjc (com.google.android.gms.internal.drive.zzjc)
.class public abstract Lcom/google/android/gms/internal/drive/zzjc;
.super Ljava/lang/Object;

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
.field public static final p:Lcom/google/android/gms/internal/drive/zzjc;

.field private static final q:Lcom/google/android/gms/internal/drive/zzji;

.field private static final r:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/drive/zzjc;",
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
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjm;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzkm;->c:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzjm;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzjc;->p:Lcom/google/android/gms/internal/drive/zzjc;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/drive/zzjn;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzjn;-><init>(Lcom/google/android/gms/internal/drive/zzjd;)V

    goto :goto_1b

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/drive/zzjg;-><init>(Lcom/google/android/gms/internal/drive/zzjd;)V

    :goto_1b
    sput-object v0, Lcom/google/android/gms/internal/drive/zzjc;->q:Lcom/google/android/gms/internal/drive/zzji;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/drive/zzje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzje;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzjc;->r:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjc;->o:I

    return-void
.end method

.method private static c(B)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static synthetic l(B)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjc;->c(B)I

    move-result p0

    return p0
.end method

.method static m(III)I
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

.method public static q(Ljava/lang/String;)Lcom/google/android/gms/internal/drive/zzjc;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjm;

    sget-object v1, Lcom/google/android/gms/internal/drive/zzkm;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzjm;-><init>([B)V

    return-object v0
.end method

.method static t(I)Lcom/google/android/gms/internal/drive/zzjk;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/drive/zzjk;-><init>(ILcom/google/android/gms/internal/drive/zzjd;)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method protected abstract g(III)I
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjc;->o:I

    if-nez v0, :cond_12

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v0}, Lcom/google/android/gms/internal/drive/zzjc;->g(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 4
    :cond_10
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjc;->o:I

    :cond_12
    return v0
.end method

.method public abstract i(II)Lcom/google/android/gms/internal/drive/zzjc;
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/drive/zzjd;-><init>(Lcom/google/android/gms/internal/drive/zzjc;)V

    return-object v0
.end method

.method protected abstract j(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method abstract k(Lcom/google/android/gms/internal/drive/zzjb;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final n()Ljava/lang/String;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkm;->a:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v1

    if-nez v1, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzjc;->j(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract o()Z
.end method

.method protected final p()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjc;->o:I

    return v0
.end method

.method public abstract r(I)B
.end method

.method abstract s(I)B
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
