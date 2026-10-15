###### Class n6.c (n6.c)
.class public Ln6/c;
.super Ljava/lang/Object;
.source "PersistedInstallation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln6/c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private final b:Lb5/g;


# direct methods
.method public constructor <init>(Lb5/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln6/c;->b:Lb5/g;

    return-void
.end method

.method private a()Ljava/io/File;
    .registers 5

    .line 1
    iget-object v0, p0, Ln6/c;->a:Ljava/io/File;

    if-nez v0, :cond_3b

    .line 2
    monitor-enter p0

    .line 3
    :try_start_5
    iget-object v0, p0, Ln6/c;->a:Ljava/io/File;

    if-nez v0, :cond_36

    .line 4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ln6/c;->b:Lb5/g;

    .line 5
    invoke-virtual {v1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PersistedInstallation."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ln6/c;->b:Lb5/g;

    .line 6
    invoke-virtual {v3}, Lb5/g;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ln6/c;->a:Ljava/io/File;

    .line 7
    :cond_36
    monitor-exit p0

    goto :goto_3b

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v0

    .line 8
    :cond_3b
    :goto_3b
    iget-object v0, p0, Ln6/c;->a:Ljava/io/File;

    return-object v0
.end method

.method private c()Lorg/json/JSONObject;
    .registers 7

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x4000

    new-array v2, v1, [B

    .line 2
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {p0}, Ln6/c;->a()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_34
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_12} :catch_34

    :goto_12
    const/4 v4, 0x0

    .line 3
    :try_start_13
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_26

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_2a

    .line 5
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_34
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_25} :catch_34

    return-object v1

    .line 6
    :cond_26
    :try_start_26
    invoke-virtual {v0, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_12

    :catchall_2a
    move-exception v0

    .line 7
    :try_start_2b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v1

    :try_start_30
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_33
    throw v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_34
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_34} :catch_34

    .line 8
    :catch_34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b(Ln6/d;)Ln6/d;
    .registers 6

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "Fid"

    .line 2
    invoke-virtual {p1}, Ln6/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Status"

    .line 3
    invoke-virtual {p1}, Ln6/d;->g()Ln6/c$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "AuthToken"

    .line 4
    invoke-virtual {p1}, Ln6/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "RefreshToken"

    .line 5
    invoke-virtual {p1}, Ln6/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "TokenCreationEpochInSecs"

    .line 6
    invoke-virtual {p1}, Ln6/d;->h()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ExpiresInSecs"

    .line 7
    invoke-virtual {p1}, Ln6/d;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "FisError"

    .line 8
    invoke-virtual {p1}, Ln6/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PersistedInstallation"

    const-string v2, "tmp"

    .line 9
    iget-object v3, p0, Ln6/c;->b:Lb5/g;

    .line 10
    invoke-virtual {v3}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 11
    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 14
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 15
    invoke-direct {p0}, Ln6/c;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_7a

    goto :goto_82

    .line 16
    :cond_7a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to rename the tmpfile to PersistedInstallation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_82} :catch_82
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_82} :catch_82

    :catch_82
    :goto_82
    return-object p1
.end method

.method public d()Ln6/d;
    .registers 12

    .line 1
    invoke-direct {p0}, Ln6/c;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Fid"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v3, Ln6/c$a;->o:Ln6/c$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string v4, "Status"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "AuthToken"

    .line 4
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RefreshToken"

    .line 5
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TokenCreationEpochInSecs"

    const-wide/16 v7, 0x0

    .line 6
    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v6, "ExpiresInSecs"

    .line 7
    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "FisError"

    .line 8
    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Ln6/d;->a()Ln6/d$a;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Ln6/d$a;->d(Ljava/lang/String;)Ln6/d$a;

    move-result-object v1

    .line 11
    invoke-static {}, Ln6/c$a;->values()[Ln6/c$a;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ln6/d$a;->g(Ln6/c$a;)Ln6/d$a;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v4}, Ln6/d$a;->b(Ljava/lang/String;)Ln6/d$a;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v5}, Ln6/d$a;->f(Ljava/lang/String;)Ln6/d$a;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v9, v10}, Ln6/d$a;->h(J)Ln6/d$a;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v6, v7}, Ln6/d$a;->c(J)Ln6/d$a;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Ln6/d$a;->e(Ljava/lang/String;)Ln6/d$a;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ln6/d$a;->a()Ln6/d;

    move-result-object v0

    return-object v0
.end method

###### Class n6.c.a (n6.c$a)
.class public final enum Ln6/c$a;
.super Ljava/lang/Enum;
.source "PersistedInstallation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln6/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Ln6/c$a;

.field public static final enum p:Ln6/c$a;

.field public static final enum q:Ln6/c$a;

.field public static final enum r:Ln6/c$a;

.field public static final enum s:Ln6/c$a;

.field private static final synthetic t:[Ln6/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Ln6/c$a;

    const-string v1, "ATTEMPT_MIGRATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln6/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln6/c$a;->o:Ln6/c$a;

    .line 2
    new-instance v1, Ln6/c$a;

    const-string v3, "NOT_GENERATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln6/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln6/c$a;->p:Ln6/c$a;

    .line 3
    new-instance v3, Ln6/c$a;

    const-string v5, "UNREGISTERED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln6/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln6/c$a;->q:Ln6/c$a;

    .line 4
    new-instance v5, Ln6/c$a;

    const-string v7, "REGISTERED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ln6/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ln6/c$a;->r:Ln6/c$a;

    .line 5
    new-instance v7, Ln6/c$a;

    const-string v9, "REGISTER_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ln6/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ln6/c$a;->s:Ln6/c$a;

    const/4 v9, 0x5

    new-array v9, v9, [Ln6/c$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Ln6/c$a;->t:[Ln6/c$a;

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

.method public static valueOf(Ljava/lang/String;)Ln6/c$a;
    .registers 2

    .line 1
    const-class v0, Ln6/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln6/c$a;

    return-object p0
.end method

.method public static values()[Ln6/c$a;
    .registers 1

    .line 1
    sget-object v0, Ln6/c$a;->t:[Ln6/c$a;

    invoke-virtual {v0}, [Ln6/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln6/c$a;

    return-object v0
.end method
