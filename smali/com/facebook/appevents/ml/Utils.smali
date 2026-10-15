###### Class com.facebook.appevents.ml.Utils (com.facebook.appevents.ml.Utils)
.class public final Lcom/facebook/appevents/ml/Utils;
.super Ljava/lang/Object;
.source "Utils.kt"


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "facebook_ml/"

.field public static final INSTANCE:Lcom/facebook/appevents/ml/Utils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/ml/Utils;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/Utils;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/Utils;->INSTANCE:Lcom/facebook/appevents/ml/Utils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMlDir()Ljava/io/File;
    .registers 5

    const-class v0, Lcom/facebook/appevents/ml/Utils;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    .line 1
    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "facebook_ml/"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_29

    if-eqz v0, :cond_28

    :cond_27
    move-object v2, v1

    :cond_28
    return-object v2

    :catchall_29
    move-exception v1

    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final parseModelWeights(Ljava/io/File;)Ljava/util/Map;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/MTensor;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-class v1, Lcom/facebook/appevents/ml/Utils;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return-object v3

    :cond_c
    :try_start_c
    const-string v2, "file"

    invoke-static {v0, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_ca

    .line 1
    :try_start_11
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 3
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-array v2, v0, [B

    .line 5
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 6
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    const/4 v4, 0x4

    if-ge v0, v4, :cond_2b

    return-object v3

    :cond_2b
    const/4 v5, 0x0

    .line 7
    invoke-static {v2, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 8
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    add-int/lit8 v7, v6, 0x4

    if-ge v0, v7, :cond_3e

    return-object v3

    .line 10
    :cond_3e
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lba/d;->b:Ljava/nio/charset/Charset;

    invoke-direct {v8, v2, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 11
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v9, v8, [Ljava/lang/String;

    add-int/lit8 v10, v8, -0x1

    if-ltz v10, :cond_66

    const/4 v11, 0x0

    :goto_59
    add-int/lit8 v12, v11, 0x1

    .line 14
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v11

    if-le v12, v10, :cond_64

    goto :goto_66

    :cond_64
    move v11, v12

    goto :goto_59

    .line 15
    :cond_66
    :goto_66
    invoke-static {v9}, Li9/c;->f([Ljava/lang/Object;)V

    .line 16
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v10, 0x0

    :goto_6f
    if-ge v10, v8, :cond_c7

    .line 17
    aget-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    if-nez v11, :cond_78

    goto :goto_6f

    .line 18
    :cond_78
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 19
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v14, v13, [I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_82} :catch_c8
    .catchall {:try_start_11 .. :try_end_82} :catchall_ca

    add-int/lit8 v13, v13, -0x1

    const/4 v15, 0x1

    if-ltz v13, :cond_9e

    :goto_87
    add-int/lit8 v3, v5, 0x1

    .line 20
    :try_start_89
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v16

    aput v16, v14, v5

    .line 21
    aget v5, v14, v5

    mul-int v15, v15, v5

    if-le v3, v13, :cond_96

    goto :goto_9e

    :cond_96
    move v5, v3

    const/4 v3, 0x0

    goto :goto_87

    :catchall_99
    move-exception v0

    const/4 v2, 0x0

    goto :goto_cc

    :catch_9c
    const/4 v2, 0x0

    goto :goto_c9

    :cond_9e
    :goto_9e
    mul-int/lit8 v3, v15, 0x4

    add-int v5, v7, v3

    if-le v5, v0, :cond_a6

    const/4 v12, 0x0

    return-object v12

    .line 22
    :cond_a6
    invoke-static {v2, v7, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 23
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 24
    new-instance v7, Lcom/facebook/appevents/ml/MTensor;

    invoke-direct {v7, v14}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 25
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v7}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13, v15}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 26
    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_c3} :catch_9c
    .catchall {:try_start_89 .. :try_end_c3} :catchall_99

    move v7, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_6f

    :cond_c7
    return-object v6

    :catch_c8
    move-object v2, v3

    :goto_c9
    return-object v2

    :catchall_ca
    move-exception v0

    move-object v2, v3

    .line 27
    :goto_cc
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    const-string v0, "str"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_16
    if-gt v4, v0, :cond_3b

    if-nez v5, :cond_1c

    move v6, v4

    goto :goto_1d

    :cond_1c
    move v6, v0

    .line 2
    :goto_1d
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 3
    invoke-static {v6, v7}, Lt9/m;->f(II)I

    move-result v6

    if-gtz v6, :cond_2b

    const/4 v6, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v6, 0x0

    :goto_2c
    if-nez v5, :cond_35

    if-nez v6, :cond_32

    const/4 v5, 0x1

    goto :goto_16

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_35
    if-nez v6, :cond_38

    goto :goto_3b

    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    :cond_3b
    :goto_3b
    add-int/2addr v0, v2

    .line 4
    invoke-interface {p1, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    .line 6
    new-instance v2, Lba/f;

    invoke-direct {v2, v0}, Lba/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lba/f;->c(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/String;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 8
    check-cast p1, [Ljava/lang/String;

    const-string v0, " "

    .line 9
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "join(\" \", strArray)"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 10
    :cond_65
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6d
    .catchall {:try_start_8 .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p1

    .line 11
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final vectorize(Ljava/lang/String;I)[I
    .registers 9

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    const-string v0, "texts"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-array v0, p2, [I

    .line 2
    invoke-virtual {p0, p1}, Lcom/facebook/appevents/ml/Utils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-8"

    .line 3
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    const-string v3, "forName(\"UTF-8\")"

    invoke-static {v2, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_41

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_40

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2d
    add-int/lit8 v4, v3, 0x1

    .line 4
    array-length v5, p1

    if-ge v3, v5, :cond_39

    .line 5
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v3

    goto :goto_3b

    .line 6
    :cond_39
    aput v2, v0, v3

    :goto_3b
    if-lt v4, p2, :cond_3e

    goto :goto_40

    :cond_3e
    move v3, v4

    goto :goto_2d

    :cond_40
    :goto_40
    return-object v0

    .line 7
    :cond_41
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    .line 8
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
