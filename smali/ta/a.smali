###### Class ta.a (ta.a)
.class public final Lta/a;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lja/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lta/a$b;,
        Lta/a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/nio/charset/Charset;


# instance fields
.field private final a:Lta/a$b;

.field private volatile b:Lta/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lta/a;->c:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lta/a$b;->a:Lta/a$b;

    invoke-direct {p0, v0}, Lta/a;-><init>(Lta/a$b;)V

    return-void
.end method

.method public constructor <init>(Lta/a$b;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lta/a$a;->o:Lta/a$a;

    iput-object v0, p0, Lta/a;->b:Lta/a$a;

    .line 4
    iput-object p1, p0, Lta/a;->a:Lta/a$b;

    return-void
.end method

.method private a(Lja/s;)Z
    .registers 3

    const-string v0, "Content-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    const-string v0, "identity"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "gzip"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method static b(Lokio/c;)Z
    .registers 9

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v7, Lokio/c;

    invoke-direct {v7}, Lokio/c;-><init>()V

    .line 2
    invoke-virtual {p0}, Lokio/c;->s()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    cmp-long v5, v1, v3

    if-gez v5, :cond_16

    invoke-virtual {p0}, Lokio/c;->s()J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_17

    :cond_16
    move-wide v5, v3

    :goto_17
    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    .line 3
    invoke-virtual/range {v1 .. v6}, Lokio/c;->g(Lokio/c;JJ)Lokio/c;

    const/4 p0, 0x0

    :goto_1f
    const/16 v1, 0x10

    if-ge p0, v1, :cond_3e

    .line 4
    invoke-virtual {v7}, Lokio/c;->S0()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_3e

    .line 5
    :cond_2a
    invoke-virtual {v7}, Lokio/c;->q()I

    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_38
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_38} :catch_40

    if-nez v1, :cond_3b

    return v0

    :cond_3b
    add-int/lit8 p0, p0, 0x1

    goto :goto_1f

    :cond_3e
    :goto_3e
    const/4 p0, 0x1

    return p0

    :catch_40
    return v0
.end method


# virtual methods
.method public c(Lta/a$a;)Lta/a;
    .registers 3

    const-string v0, "level == null. Use Level.NONE instead."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lta/a;->b:Lta/a$a;

    return-object p0
.end method

.method public intercept(Lja/u$a;)Lja/c0;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v1, Lta/a;->b:Lta/a$a;

    .line 2
    invoke-interface/range {p1 .. p1}, Lja/u$a;->f()Lja/a0;

    move-result-object v3

    .line 3
    sget-object v4, Lta/a$a;->o:Lta/a$a;

    if-ne v2, v4, :cond_13

    .line 4
    invoke-interface {v0, v3}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object v0

    return-object v0

    .line 5
    :cond_13
    sget-object v4, Lta/a$a;->r:Lta/a$a;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    if-nez v4, :cond_24

    .line 6
    sget-object v7, Lta/a$a;->q:Lta/a$a;

    if-ne v2, v7, :cond_22

    goto :goto_24

    :cond_22
    const/4 v2, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v2, 0x1

    .line 7
    :goto_25
    invoke-virtual {v3}, Lja/a0;->a()Lja/b0;

    move-result-object v7

    if-eqz v7, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    .line 8
    :goto_2d
    invoke-interface/range {p1 .. p1}, Lja/u$a;->c()Lja/i;

    move-result-object v8

    .line 9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v3}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v3}, Lja/a0;->h()Lja/t;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ""

    if-eqz v8, :cond_68

    .line 12
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lja/i;->a()Lja/y;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_69

    :cond_68
    move-object v8, v11

    :goto_69
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-byte body)"

    const-string v12, " ("

    if-nez v2, :cond_91

    if-eqz v5, :cond_91

    .line 13
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lja/b0;->contentLength()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 14
    :cond_91
    iget-object v13, v1, Lta/a;->a:Lta/a$b;

    invoke-interface {v13, v8}, Lta/a$b;->a(Ljava/lang/String;)V

    const-string v8, "-byte body omitted)"

    const-string v13, ": "

    if-eqz v2, :cond_1ec

    if-eqz v5, :cond_e2

    .line 15
    invoke-virtual {v7}, Lja/b0;->contentType()Lja/v;

    move-result-object v16

    if-eqz v16, :cond_be

    .line 16
    iget-object v6, v1, Lta/a;->a:Lta/a$b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Type: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lja/b0;->contentType()Lja/v;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lta/a$b;->a(Ljava/lang/String;)V

    .line 17
    :cond_be
    invoke-virtual {v7}, Lja/b0;->contentLength()J

    move-result-wide v14

    const-wide/16 v17, -0x1

    cmp-long v6, v14, v17

    if-eqz v6, :cond_e2

    .line 18
    iget-object v6, v1, Lta/a;->a:Lta/a$b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Length: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lja/b0;->contentLength()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lta/a$b;->a(Ljava/lang/String;)V

    .line 19
    :cond_e2
    invoke-virtual {v3}, Lja/a0;->d()Lja/s;

    move-result-object v6

    .line 20
    invoke-virtual {v6}, Lja/s;->h()I

    move-result v10

    const/4 v14, 0x0

    :goto_eb
    if-ge v14, v10, :cond_12a

    .line 21
    invoke-virtual {v6, v14}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v19, v10

    const-string v10, "Content-Type"

    .line 22
    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_121

    const-string v10, "Content-Length"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_121

    .line 23
    iget-object v10, v1, Lta/a;->a:Lta/a$b;

    move/from16 v20, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lta/a$b;->a(Ljava/lang/String;)V

    goto :goto_123

    :cond_121
    move/from16 v20, v2

    :goto_123
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v19

    move/from16 v2, v20

    goto :goto_eb

    :cond_12a
    move/from16 v20, v2

    const-string v2, "--> END "

    if-eqz v4, :cond_1d3

    if-nez v5, :cond_134

    goto/16 :goto_1d3

    .line 24
    :cond_134
    invoke-virtual {v3}, Lja/a0;->d()Lja/s;

    move-result-object v5

    invoke-direct {v1, v5}, Lta/a;->a(Lja/s;)Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 25
    iget-object v5, v1, Lta/a;->a:Lta/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (encoded body omitted)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lta/a$b;->a(Ljava/lang/String;)V

    goto/16 :goto_1ee

    .line 26
    :cond_15d
    new-instance v5, Lokio/c;

    invoke-direct {v5}, Lokio/c;-><init>()V

    .line 27
    invoke-virtual {v7, v5}, Lja/b0;->writeTo(Lokio/d;)V

    .line 28
    sget-object v6, Lta/a;->c:Ljava/nio/charset/Charset;

    .line 29
    invoke-virtual {v7}, Lja/b0;->contentType()Lja/v;

    move-result-object v10

    if-eqz v10, :cond_171

    .line 30
    invoke-virtual {v10, v6}, Lja/v;->b(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 31
    :cond_171
    iget-object v10, v1, Lta/a;->a:Lta/a$b;

    invoke-interface {v10, v11}, Lta/a$b;->a(Ljava/lang/String;)V

    .line 32
    invoke-static {v5}, Lta/a;->b(Lokio/c;)Z

    move-result v10

    if-eqz v10, :cond_1ab

    .line 33
    iget-object v10, v1, Lta/a;->a:Lta/a$b;

    invoke-virtual {v5, v6}, Lokio/c;->T1(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Lta/a$b;->a(Ljava/lang/String;)V

    .line 34
    iget-object v5, v1, Lta/a;->a:Lta/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v7}, Lja/b0;->contentLength()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-interface {v5, v2}, Lta/a$b;->a(Ljava/lang/String;)V

    goto :goto_1ee

    .line 37
    :cond_1ab
    iget-object v5, v1, Lta/a;->a:Lta/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (binary "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v7}, Lja/b0;->contentLength()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-interface {v5, v2}, Lta/a$b;->a(Ljava/lang/String;)V

    goto :goto_1ee

    .line 40
    :cond_1d3
    :goto_1d3
    iget-object v5, v1, Lta/a;->a:Lta/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lta/a$b;->a(Ljava/lang/String;)V

    goto :goto_1ee

    :cond_1ec
    move/from16 v20, v2

    .line 41
    :goto_1ee
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 42
    :try_start_1f2
    invoke-interface {v0, v3}, Lja/u$a;->e(Lja/a0;)Lja/c0;

    move-result-object v0
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1f6} :catch_3d4

    .line 43
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long/2addr v14, v5

    invoke-virtual {v2, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 44
    invoke-virtual {v0}, Lja/c0;->b()Lja/d0;

    move-result-object v5

    .line 45
    invoke-virtual {v5}, Lja/d0;->contentLength()J

    move-result-wide v6

    const-wide/16 v14, -0x1

    cmp-long v10, v6, v14

    if-eqz v10, :cond_221

    .line 46
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "-byte"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_223

    :cond_221
    const-string v10, "unknown-length"

    .line 47
    :goto_223
    iget-object v14, v1, Lta/a;->a:Lta/a$b;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v9

    const-string v9, "<-- "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Lja/c0;->d()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Lja/c0;->j()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_248

    move-wide/from16 v18, v6

    move-object v7, v11

    const/16 v6, 0x20

    goto :goto_25f

    :cond_248
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v6

    const/16 v6, 0x20

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lja/c0;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_25f
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Lja/c0;->n()Lja/a0;

    move-result-object v6

    invoke-virtual {v6}, Lja/a0;->h()Lja/t;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v20, :cond_294

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " body"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_295

    :cond_294
    move-object v2, v11

    :goto_295
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-interface {v14, v2}, Lta/a$b;->a(Ljava/lang/String;)V

    if-eqz v20, :cond_3d3

    .line 53
    invoke-virtual {v0}, Lja/c0;->h()Lja/s;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lja/s;->h()I

    move-result v3

    const/4 v6, 0x0

    :goto_2af
    if-ge v6, v3, :cond_2d3

    .line 55
    iget-object v7, v1, Lta/a;->a:Lta/a$b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lta/a$b;->a(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2af

    :cond_2d3
    if-eqz v4, :cond_3cc

    .line 56
    invoke-static {v0}, Lna/e;->c(Lja/c0;)Z

    move-result v3

    if-nez v3, :cond_2dd

    goto/16 :goto_3cc

    .line 57
    :cond_2dd
    invoke-virtual {v0}, Lja/c0;->h()Lja/s;

    move-result-object v3

    invoke-direct {v1, v3}, Lta/a;->a(Lja/s;)Z

    move-result v3

    if-eqz v3, :cond_2f0

    .line 58
    iget-object v2, v1, Lta/a;->a:Lta/a$b;

    const-string v3, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v2, v3}, Lta/a$b;->a(Ljava/lang/String;)V

    goto/16 :goto_3d3

    .line 59
    :cond_2f0
    invoke-virtual {v5}, Lja/d0;->source()Lokio/e;

    move-result-object v3

    const-wide v6, 0x7fffffffffffffffL

    .line 60
    invoke-interface {v3, v6, v7}, Lokio/e;->t2(J)Z

    .line 61
    invoke-interface {v3}, Lokio/e;->B()Lokio/c;

    move-result-object v3

    const-string v4, "Content-Encoding"

    .line 62
    invoke-virtual {v2, v4}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "gzip"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_337

    .line 63
    invoke-virtual {v3}, Lokio/c;->s()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 64
    :try_start_317
    new-instance v6, Lokio/l;

    invoke-virtual {v3}, Lokio/c;->d()Lokio/c;

    move-result-object v3

    invoke-direct {v6, v3}, Lokio/l;-><init>(Lokio/u;)V
    :try_end_320
    .catchall {:try_start_317 .. :try_end_320} :catchall_330

    .line 65
    :try_start_320
    new-instance v3, Lokio/c;

    invoke-direct {v3}, Lokio/c;-><init>()V

    .line 66
    invoke-virtual {v3, v6}, Lokio/c;->h2(Lokio/u;)J
    :try_end_328
    .catchall {:try_start_320 .. :try_end_328} :catchall_32d

    .line 67
    invoke-virtual {v6}, Lokio/l;->close()V

    move-object v4, v2

    goto :goto_337

    :catchall_32d
    move-exception v0

    move-object v4, v6

    goto :goto_331

    :catchall_330
    move-exception v0

    :goto_331
    if-eqz v4, :cond_336

    invoke-virtual {v4}, Lokio/l;->close()V

    :cond_336
    throw v0

    .line 68
    :cond_337
    :goto_337
    sget-object v2, Lta/a;->c:Ljava/nio/charset/Charset;

    .line 69
    invoke-virtual {v5}, Lja/d0;->contentType()Lja/v;

    move-result-object v5

    if-eqz v5, :cond_343

    .line 70
    invoke-virtual {v5, v2}, Lja/v;->b(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 71
    :cond_343
    invoke-static {v3}, Lta/a;->b(Lokio/c;)Z

    move-result v5

    if-nez v5, :cond_36c

    .line 72
    iget-object v2, v1, Lta/a;->a:Lta/a$b;

    invoke-interface {v2, v11}, Lta/a$b;->a(Ljava/lang/String;)V

    .line 73
    iget-object v2, v1, Lta/a;->a:Lta/a$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- END HTTP (binary "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/c;->s()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lta/a$b;->a(Ljava/lang/String;)V

    return-object v0

    :cond_36c
    const-wide/16 v5, 0x0

    cmp-long v7, v18, v5

    if-eqz v7, :cond_384

    .line 74
    iget-object v5, v1, Lta/a;->a:Lta/a$b;

    invoke-interface {v5, v11}, Lta/a$b;->a(Ljava/lang/String;)V

    .line 75
    iget-object v5, v1, Lta/a;->a:Lta/a$b;

    invoke-virtual {v3}, Lokio/c;->d()Lokio/c;

    move-result-object v6

    invoke-virtual {v6, v2}, Lokio/c;->T1(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lta/a$b;->a(Ljava/lang/String;)V

    :cond_384
    const-string v2, "<-- END HTTP ("

    if-eqz v4, :cond_3ae

    .line 76
    iget-object v5, v1, Lta/a;->a:Lta/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/c;->s()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-byte, "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-gzipped-byte body)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lta/a$b;->a(Ljava/lang/String;)V

    goto :goto_3d3

    .line 77
    :cond_3ae
    iget-object v4, v1, Lta/a;->a:Lta/a$b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/c;->s()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lta/a$b;->a(Ljava/lang/String;)V

    goto :goto_3d3

    .line 78
    :cond_3cc
    :goto_3cc
    iget-object v2, v1, Lta/a;->a:Lta/a$b;

    const-string v3, "<-- END HTTP"

    invoke-interface {v2, v3}, Lta/a$b;->a(Ljava/lang/String;)V

    :cond_3d3
    :goto_3d3
    return-object v0

    :catch_3d4
    move-exception v0

    move-object v2, v0

    .line 79
    iget-object v0, v1, Lta/a;->a:Lta/a$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<-- HTTP FAILED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lta/a$b;->a(Ljava/lang/String;)V

    .line 80
    goto :goto_3ee

    :goto_3ed
    throw v2

    :goto_3ee
    goto :goto_3ed
.end method

###### Class ta.a.EnumC0257a (ta.a$a)
.class public final enum Lta/a$a;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lta/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lta/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lta/a$a;

.field public static final enum p:Lta/a$a;

.field public static final enum q:Lta/a$a;

.field public static final enum r:Lta/a$a;

.field private static final synthetic s:[Lta/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 1
    new-instance v0, Lta/a$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lta/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lta/a$a;->o:Lta/a$a;

    .line 2
    new-instance v1, Lta/a$a;

    const-string v3, "BASIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lta/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lta/a$a;->p:Lta/a$a;

    .line 3
    new-instance v3, Lta/a$a;

    const-string v5, "HEADERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lta/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lta/a$a;->q:Lta/a$a;

    .line 4
    new-instance v5, Lta/a$a;

    const-string v7, "BODY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lta/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lta/a$a;->r:Lta/a$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lta/a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lta/a$a;->s:[Lta/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lta/a$a;
    .registers 2

    .line 1
    const-class v0, Lta/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lta/a$a;

    return-object p0
.end method

.method public static values()[Lta/a$a;
    .registers 1

    .line 1
    sget-object v0, Lta/a$a;->s:[Lta/a$a;

    invoke-virtual {v0}, [Lta/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lta/a$a;

    return-object v0
.end method

###### Class ta.a.b (ta.a$b)
.class public interface abstract Lta/a$b;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lta/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lta/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lta/a$b$a;

    invoke-direct {v0}, Lta/a$b$a;-><init>()V

    sput-object v0, Lta/a$b;->a:Lta/a$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method

###### Class ta.a.b.C0258a (ta.a$b$a)
.class final Lta/a$b$a;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lta/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lta/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lqa/g;->l()Lqa/g;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lqa/g;->s(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
