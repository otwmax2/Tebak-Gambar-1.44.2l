###### Class com.google.android.gms.internal.ads.zzalx (com.google.android.gms.internal.ads.zzalx)
.class public abstract Lcom/google/android/gms/internal/ads/zzalx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaly;


# static fields
.field private static final b:Ljava/util/logging/Logger;


# instance fields
.field final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzalx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalx;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzalw;-><init>(Lcom/google/android/gms/internal/ads/zzalx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzgwk;Lcom/google/android/gms/internal/ads/zzamc;)Lcom/google/android/gms/internal/ads/zzamb;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgwk;->zzb()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    :goto_15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzgwk;->q3(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-eq v2, v3, :cond_2f

    if-ltz v2, :cond_26

    goto :goto_15

    .line 4
    :cond_26
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgwk;->D(J)V

    .line 5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 6
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 7
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzama;->e(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const-wide/16 v4, 0x8

    const/4 v2, 0x0

    const-wide/16 v6, 0x1

    cmp-long v8, v0, v4

    if-gez v8, :cond_78

    cmp-long v4, v0, v6

    if-gtz v4, :cond_54

    goto :goto_78

    .line 8
    :cond_54
    sget-object p1, Lcom/google/android/gms/internal/ads/zzalx;->b:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    .line 9
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Plausibility check failed: size < 8 (size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "). Stop parsing!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.coremedia.iso.AbstractBoxParser"

    const-string v3, "parseBox"

    invoke-virtual {p1, p2, v1, v3, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 10
    :cond_78
    :goto_78
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 11
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    new-array v5, v5, [B

    .line 12
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_86
    new-instance v4, Ljava/lang/String;

    const-string v8, "ISO-8859-1"

    invoke-direct {v4, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_86 .. :try_end_8d} :catch_173

    const-wide/16 v8, -0x10

    const/16 v5, 0x10

    cmp-long v10, v0, v6

    if-nez v10, :cond_c4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 13
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 14
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgwk;->q3(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 15
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 16
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzama;->f(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    add-long/2addr v0, v8

    goto :goto_d7

    :cond_c4
    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-nez v3, :cond_d4

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgwk;->a()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgwk;->zzb()J

    move-result-wide v6

    sub-long/2addr v0, v6

    goto :goto_d7

    :cond_d4
    const-wide/16 v6, -0x8

    add-long/2addr v0, v6

    :goto_d7
    const-string v3, "uuid"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_142

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 19
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 20
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzgwk;->q3(Ljava/nio/ByteBuffer;)I

    new-array v2, v5, [B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 21
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x10

    :goto_112
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-ge v3, v5, :cond_141

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 22
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, -0x10

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    sub-int v5, v3, v5

    aput-byte v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_112

    :cond_141
    add-long/2addr v0, v8

    :cond_142
    move-wide v8, v0

    .line 23
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzamb;

    if-eqz v0, :cond_14f

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzamb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamb;->zza()Ljava/lang/String;

    move-result-object v0

    goto :goto_151

    :cond_14f
    const-string v0, ""

    :goto_151
    invoke-virtual {p0, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzalx;->b(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzamb;

    move-result-object v0

    .line 24
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzamb;->d(Lcom/google/android/gms/internal/ads/zzamc;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 25
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalx;->a:Ljava/lang/ThreadLocal;

    .line 26
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/nio/ByteBuffer;

    move-object v5, v0

    move-object v6, p1

    move-object v10, p0

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzamb;->b(Lcom/google/android/gms/internal/ads/zzgwk;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzaly;)V

    return-object v0

    :catch_173
    move-exception p1

    .line 27
    new-instance p2, Ljava/lang/RuntimeException;

    .line 28
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_17b

    :goto_17a
    throw p2

    :goto_17b
    goto :goto_17a
.end method

.method public abstract b(Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzamb;
.end method
