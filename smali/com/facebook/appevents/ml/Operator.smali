###### Class com.facebook.appevents.ml.Operator (com.facebook.appevents.ml.Operator)
.class public final Lcom/facebook/appevents/ml/Operator;
.super Ljava/lang/Object;
.source "Operator.kt"


# static fields
.field public static final INSTANCE:Lcom/facebook/appevents/ml/Operator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/appevents/ml/Operator;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/Operator;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/Operator;->INSTANCE:Lcom/facebook/appevents/ml/Operator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addmv(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V
    .registers 15

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "x"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "b"

    invoke-static {p1, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    const/4 v4, 0x2

    .line 3
    invoke-virtual {p0, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    .line 4
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p1

    if-lez v2, :cond_57

    const/4 v5, 0x0

    :goto_2d
    add-int/lit8 v6, v5, 0x1

    if-lez v3, :cond_52

    const/4 v7, 0x0

    :goto_32
    add-int/lit8 v8, v7, 0x1

    if-lez v4, :cond_4d

    const/4 v9, 0x0

    :goto_37
    add-int/lit8 v10, v9, 0x1

    mul-int v11, v5, v3

    mul-int v11, v11, v4

    mul-int v12, v7, v4

    add-int/2addr v11, v12

    add-int/2addr v11, v9

    .line 6
    aget v12, p0, v11

    aget v9, p1, v9

    add-float/2addr v12, v9

    aput v12, p0, v11
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_58

    if-lt v10, v4, :cond_4b

    goto :goto_4d

    :cond_4b
    move v9, v10

    goto :goto_37

    :cond_4d
    :goto_4d
    if-lt v8, v3, :cond_50

    goto :goto_52

    :cond_50
    move v7, v8

    goto :goto_32

    :cond_52
    :goto_52
    if-lt v6, v2, :cond_55

    goto :goto_57

    :cond_55
    move v5, v6

    goto :goto_2d

    :cond_57
    :goto_57
    return-void

    :catchall_58
    move-exception p0

    .line 7
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final concatenate([Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 17

    move-object/from16 v0, p0

    const-class v1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return-object v3

    :cond_c
    :try_start_c
    const-string v2, "tensors"

    invoke-static {v0, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1
    aget-object v4, v0, v2

    invoke-virtual {v4, v2}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    .line 2
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    if-ltz v5, :cond_2e

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_20
    add-int/lit8 v9, v7, 0x1

    .line 3
    aget-object v7, v0, v7

    invoke-virtual {v7, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v7

    add-int/2addr v8, v7

    if-le v9, v5, :cond_2c

    goto :goto_2f

    :cond_2c
    move v7, v9

    goto :goto_20

    :cond_2e
    const/4 v8, 0x0

    .line 4
    :goto_2f
    new-instance v5, Lcom/facebook/appevents/ml/MTensor;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v4, v7, v2

    aput v8, v7, v6

    invoke-direct {v5, v7}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 5
    invoke-virtual {v5}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v7

    if-lez v4, :cond_6c

    const/4 v9, 0x0

    :goto_42
    add-int/lit8 v10, v9, 0x1

    mul-int v11, v9, v8

    .line 6
    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_66

    const/4 v13, 0x0

    :goto_4c
    add-int/lit8 v14, v13, 0x1

    .line 7
    aget-object v15, v0, v13

    invoke-virtual {v15}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v15

    .line 8
    aget-object v13, v0, v13

    invoke-virtual {v13, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v13

    mul-int v2, v9, v13

    .line 9
    invoke-static {v15, v2, v7, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5f
    .catchall {:try_start_c .. :try_end_5f} :catchall_6d

    add-int/2addr v11, v13

    if-le v14, v12, :cond_63

    goto :goto_66

    :cond_63
    move v13, v14

    const/4 v2, 0x0

    goto :goto_4c

    :cond_66
    :goto_66
    if-lt v10, v4, :cond_69

    goto :goto_6c

    :cond_69
    move v9, v10

    const/4 v2, 0x0

    goto :goto_42

    :cond_6c
    :goto_6c
    return-object v5

    :catchall_6d
    move-exception v0

    .line 10
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static final conv1D(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    return-object v4

    :cond_e
    :try_start_e
    const-string v3, "x"

    invoke-static {v0, v3}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "w"

    invoke-static {v1, v3}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    const/4 v6, 0x1

    .line 2
    invoke-virtual {v0, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v7

    const/4 v8, 0x2

    .line 3
    invoke-virtual {v0, v8}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v9

    .line 4
    invoke-virtual {v1, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v10

    sub-int v11, v7, v10

    add-int/2addr v11, v6

    .line 5
    invoke-virtual {v1, v8}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v12

    .line 6
    new-instance v13, Lcom/facebook/appevents/ml/MTensor;

    const/4 v14, 0x3

    new-array v14, v14, [I

    aput v5, v14, v3

    aput v11, v14, v6

    aput v12, v14, v8

    invoke-direct {v13, v14}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v0

    .line 8
    invoke-virtual {v13}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v6

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v1
    :try_end_4c
    .catchall {:try_start_e .. :try_end_4c} :catchall_de

    if-lez v5, :cond_db

    const/4 v8, 0x0

    :goto_4f
    add-int/lit8 v14, v8, 0x1

    if-lez v12, :cond_cb

    const/4 v15, 0x0

    :goto_54
    add-int/lit8 v3, v15, 0x1

    if-lez v11, :cond_bc

    const/16 v16, 0x0

    :goto_5a
    add-int/lit8 v4, v16, 0x1

    const/16 v17, 0x0

    if-lez v10, :cond_9e

    const/16 v18, 0x0

    :goto_62
    move-object/from16 v19, v2

    add-int/lit8 v2, v18, 0x1

    if-lez v9, :cond_92

    const/16 v20, 0x0

    :goto_6a
    move-object/from16 v21, v13

    add-int/lit8 v13, v20, 0x1

    mul-int v22, v7, v9

    mul-int v22, v22, v8

    add-int v23, v18, v16

    mul-int v23, v23, v9

    add-int v22, v22, v23

    add-int v22, v22, v20

    .line 10
    :try_start_7a
    aget v22, v0, v22

    mul-int v23, v18, v9

    add-int v23, v23, v20

    mul-int v23, v23, v12

    add-int v23, v23, v15

    .line 11
    aget v20, v1, v23

    mul-float v22, v22, v20

    add-float v17, v17, v22

    if-lt v13, v9, :cond_8d

    goto :goto_94

    :cond_8d
    move/from16 v20, v13

    move-object/from16 v13, v21

    goto :goto_6a

    :cond_92
    move-object/from16 v21, v13

    :goto_94
    if-lt v2, v10, :cond_97

    goto :goto_a2

    :cond_97
    move/from16 v18, v2

    move-object/from16 v2, v19

    move-object/from16 v13, v21

    goto :goto_62

    :cond_9e
    move-object/from16 v19, v2

    move-object/from16 v21, v13

    :goto_a2
    mul-int v2, v11, v12

    mul-int v2, v2, v8

    mul-int v16, v16, v12

    add-int v2, v2, v16

    add-int/2addr v2, v15

    .line 12
    aput v17, v6, v2
    :try_end_ad
    .catchall {:try_start_7a .. :try_end_ad} :catchall_b8

    if-lt v4, v11, :cond_b0

    goto :goto_c0

    :cond_b0
    move/from16 v16, v4

    move-object/from16 v2, v19

    move-object/from16 v13, v21

    const/4 v4, 0x0

    goto :goto_5a

    :catchall_b8
    move-exception v0

    move-object/from16 v1, v19

    goto :goto_e0

    :cond_bc
    move-object/from16 v19, v2

    move-object/from16 v21, v13

    :goto_c0
    if-lt v3, v12, :cond_c3

    goto :goto_cf

    :cond_c3
    move v15, v3

    move-object/from16 v2, v19

    move-object/from16 v13, v21

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_54

    :cond_cb
    move-object/from16 v19, v2

    move-object/from16 v21, v13

    :goto_cf
    if-lt v14, v5, :cond_d2

    goto :goto_dd

    :cond_d2
    move v8, v14

    move-object/from16 v2, v19

    move-object/from16 v13, v21

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_4f

    :cond_db
    move-object/from16 v21, v13

    :goto_dd
    return-object v21

    :catchall_de
    move-exception v0

    move-object v1, v2

    .line 13
    :goto_e0
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static final dense(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 14

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    const-string v1, "x"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "w"

    invoke-static {p1, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "b"

    invoke-static {p2, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 2
    invoke-virtual {p2, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    .line 3
    invoke-static {p0, p1}, Lcom/facebook/appevents/ml/Operator;->mul(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object p0

    .line 4
    invoke-virtual {p2}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p2

    if-lez v3, :cond_4c

    const/4 v5, 0x0

    :goto_31
    add-int/lit8 v6, v5, 0x1

    if-lez v4, :cond_47

    const/4 v7, 0x0

    :goto_36
    add-int/lit8 v8, v7, 0x1

    mul-int v9, v5, v4

    add-int/2addr v9, v7

    .line 6
    aget v10, p2, v9

    aget v7, p1, v7

    add-float/2addr v10, v7

    aput v10, p2, v9
    :try_end_42
    .catchall {:try_start_a .. :try_end_42} :catchall_4d

    if-lt v8, v4, :cond_45

    goto :goto_47

    :cond_45
    move v7, v8

    goto :goto_36

    :cond_47
    :goto_47
    if-lt v6, v3, :cond_4a

    goto :goto_4c

    :cond_4a
    move v5, v6

    goto :goto_31

    :cond_4c
    :goto_4c
    return-object p0

    :catchall_4d
    move-exception p0

    .line 7
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final embedding([Ljava/lang/String;ILcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v3}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_10

    return-object v5

    :cond_10
    :try_start_10
    const-string v4, "texts"

    invoke-static {v0, v4}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "w"

    invoke-static {v2, v4}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v4, v0

    const/4 v6, 0x1

    .line 2
    invoke-virtual {v2, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v7

    .line 3
    new-instance v8, Lcom/facebook/appevents/ml/MTensor;

    const/4 v9, 0x3

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v4, v9, v10

    aput v1, v9, v6

    const/4 v6, 0x2

    aput v7, v9, v6

    invoke-direct {v8, v9}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 4
    invoke-virtual {v8}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v6

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v2

    if-lez v4, :cond_63

    const/4 v9, 0x0

    :goto_3b
    add-int/lit8 v11, v9, 0x1

    .line 6
    sget-object v12, Lcom/facebook/appevents/ml/Utils;->INSTANCE:Lcom/facebook/appevents/ml/Utils;

    aget-object v13, v0, v9

    invoke-virtual {v12, v13, v1}, Lcom/facebook/appevents/ml/Utils;->vectorize(Ljava/lang/String;I)[I

    move-result-object v12

    if-lez v1, :cond_5e

    const/4 v13, 0x0

    :goto_48
    add-int/lit8 v14, v13, 0x1

    .line 7
    aget v15, v12, v13

    mul-int v15, v15, v7

    mul-int v16, v7, v1

    mul-int v16, v16, v9

    mul-int v13, v13, v7

    add-int v13, v16, v13

    .line 8
    invoke-static {v2, v15, v6, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_59
    .catchall {:try_start_10 .. :try_end_59} :catchall_64

    if-lt v14, v1, :cond_5c

    goto :goto_5e

    :cond_5c
    move v13, v14

    goto :goto_48

    :cond_5e
    :goto_5e
    if-lt v11, v4, :cond_61

    goto :goto_63

    :cond_61
    move v9, v11

    goto :goto_3b

    :cond_63
    :goto_63
    return-object v8

    :catchall_64
    move-exception v0

    .line 9
    invoke-static {v0, v3}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v5
.end method

.method public static final flatten(Lcom/facebook/appevents/ml/MTensor;I)V
    .registers 8

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "x"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getShapeSize()I

    move-result v1

    if-lt p1, v1, :cond_15

    return-void

    .line 2
    :cond_15
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getShapeSize()I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_2a

    move v3, p1

    :goto_1d
    add-int/lit8 v4, v3, 0x1

    .line 3
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    mul-int v2, v2, v3

    if-lt v4, v1, :cond_28

    goto :goto_2a

    :cond_28
    move v3, v4

    goto :goto_1d

    :cond_2a
    :goto_2a
    add-int/lit8 v1, p1, 0x1

    .line 4
    new-array v1, v1, [I

    const/4 v3, 0x0

    if-lez p1, :cond_3e

    :goto_31
    add-int/lit8 v4, v3, 0x1

    .line 5
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    aput v5, v1, v3

    if-lt v4, p1, :cond_3c

    goto :goto_3e

    :cond_3c
    move v3, v4

    goto :goto_31

    .line 6
    :cond_3e
    :goto_3e
    aput v2, v1, p1

    .line 7
    invoke-virtual {p0, v1}, Lcom/facebook/appevents/ml/MTensor;->reshape([I)V
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_44

    return-void

    :catchall_44
    move-exception p0

    .line 8
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final maxPool1D(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    return-object v4

    :cond_e
    :try_start_e
    const-string v3, "x"

    invoke-static {v0, v3}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    const/4 v6, 0x1

    .line 2
    invoke-virtual {v0, v6}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v7

    const/4 v8, 0x2

    .line 3
    invoke-virtual {v0, v8}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v9

    sub-int v10, v7, v1

    add-int/2addr v10, v6

    .line 4
    new-instance v11, Lcom/facebook/appevents/ml/MTensor;

    const/4 v12, 0x3

    new-array v12, v12, [I

    aput v5, v12, v3

    aput v10, v12, v6

    aput v9, v12, v8

    invoke-direct {v11, v12}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v0

    .line 6
    invoke-virtual {v11}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v6

    if-lez v5, :cond_9d

    const/4 v8, 0x0

    :goto_3e
    add-int/lit8 v12, v8, 0x1

    if-lez v9, :cond_92

    const/4 v13, 0x0

    :goto_43
    add-int/lit8 v14, v13, 0x1

    if-lez v10, :cond_87

    const/4 v15, 0x0

    :goto_48
    add-int/lit8 v3, v15, 0x1

    mul-int v16, v8, v10

    mul-int v16, v16, v9

    mul-int v15, v15, v9

    add-int v16, v16, v15

    add-int v16, v16, v13

    mul-int v17, v8, v7

    mul-int v17, v17, v9

    add-int v17, v17, v15

    add-int v17, v17, v13

    const/4 v15, 0x1

    .line 7
    aput v15, v6, v16

    if-lez v1, :cond_7c

    const/4 v15, 0x0

    :goto_62
    add-int/lit8 v4, v15, 0x1

    move/from16 v18, v7

    .line 8
    aget v7, v6, v16

    mul-int v15, v15, v9

    add-int v15, v17, v15

    aget v15, v0, v15

    invoke-static {v7, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aput v7, v6, v16
    :try_end_74
    .catchall {:try_start_e .. :try_end_74} :catchall_9e

    if-lt v4, v1, :cond_77

    goto :goto_7e

    :cond_77
    move v15, v4

    move/from16 v7, v18

    const/4 v4, 0x0

    goto :goto_62

    :cond_7c
    move/from16 v18, v7

    :goto_7e
    if-lt v3, v10, :cond_81

    goto :goto_89

    :cond_81
    move v15, v3

    move/from16 v7, v18

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_48

    :cond_87
    move/from16 v18, v7

    :goto_89
    if-lt v14, v9, :cond_8c

    goto :goto_94

    :cond_8c
    move v13, v14

    move/from16 v7, v18

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_43

    :cond_92
    move/from16 v18, v7

    :goto_94
    if-lt v12, v5, :cond_97

    goto :goto_9d

    :cond_97
    move v8, v12

    move/from16 v7, v18

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_3e

    :cond_9d
    :goto_9d
    return-object v11

    :catchall_9e
    move-exception v0

    .line 9
    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static final mul(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    return-object v4

    :cond_e
    :try_start_e
    const-string v3, "x"

    invoke-static {v0, v3}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "w"

    invoke-static {v1, v3}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    .line 2
    invoke-virtual {v1, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v6

    const/4 v7, 0x1

    .line 3
    invoke-virtual {v1, v7}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v8

    .line 4
    new-instance v9, Lcom/facebook/appevents/ml/MTensor;

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v5, v10, v3

    aput v8, v10, v7

    invoke-direct {v9, v10}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v0

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v1

    .line 7
    invoke-virtual {v9}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v7

    if-lez v5, :cond_78

    const/4 v10, 0x0

    :goto_41
    add-int/lit8 v11, v10, 0x1

    if-lez v8, :cond_72

    const/4 v12, 0x0

    :goto_46
    add-int/lit8 v13, v12, 0x1

    mul-int v14, v10, v8

    add-int/2addr v14, v12

    const/4 v15, 0x0

    .line 8
    aput v15, v7, v14

    if-lez v6, :cond_6c

    const/4 v15, 0x0

    :goto_51
    add-int/lit8 v3, v15, 0x1

    .line 9
    aget v16, v7, v14

    mul-int v17, v10, v6

    add-int v17, v17, v15

    aget v17, v0, v17

    mul-int v15, v15, v8

    add-int/2addr v15, v12

    aget v15, v1, v15

    mul-float v17, v17, v15

    add-float v16, v16, v17

    aput v16, v7, v14
    :try_end_66
    .catchall {:try_start_e .. :try_end_66} :catchall_79

    if-lt v3, v6, :cond_69

    goto :goto_6c

    :cond_69
    move v15, v3

    const/4 v3, 0x0

    goto :goto_51

    :cond_6c
    :goto_6c
    if-lt v13, v8, :cond_6f

    goto :goto_72

    :cond_6f
    move v12, v13

    const/4 v3, 0x0

    goto :goto_46

    :cond_72
    :goto_72
    if-lt v11, v5, :cond_75

    goto :goto_78

    :cond_75
    move v10, v11

    const/4 v3, 0x0

    goto :goto_41

    :cond_78
    :goto_78
    return-object v9

    :catchall_79
    move-exception v0

    .line 10
    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v4
.end method

.method public static final relu(Lcom/facebook/appevents/ml/MTensor;)V
    .registers 7

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "x"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    const/4 v1, 0x0

    .line 2
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_28

    :goto_18
    add-int/lit8 v3, v1, 0x1

    .line 3
    aget v4, p0, v1

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_23

    .line 4
    aput v5, p0, v1
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_29

    :cond_23
    if-le v3, v2, :cond_26

    goto :goto_28

    :cond_26
    move v1, v3

    goto :goto_18

    :cond_28
    :goto_28
    return-void

    :catchall_29
    move-exception p0

    .line 5
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final softmax(Lcom/facebook/appevents/ml/MTensor;)V
    .registers 13

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    :try_start_9
    const-string v1, "x"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v2

    const/4 v3, 0x1

    .line 2
    invoke-virtual {p0, v3}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    .line 3
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    if-lez v2, :cond_63

    :goto_1e
    add-int/lit8 v4, v1, 0x1

    mul-int v1, v1, v3

    add-int v5, v1, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v1, v5, :cond_38

    move v8, v1

    :goto_29
    add-int/lit8 v9, v8, 0x1

    .line 4
    aget v10, p0, v8

    cmpl-float v10, v10, v6

    if-lez v10, :cond_33

    .line 5
    aget v6, p0, v8

    :cond_33
    if-lt v9, v5, :cond_36

    goto :goto_38

    :cond_36
    move v8, v9

    goto :goto_29

    :cond_38
    :goto_38
    if-ge v1, v5, :cond_50

    move v8, v1

    :goto_3b
    add-int/lit8 v9, v8, 0x1

    .line 6
    aget v10, p0, v8

    sub-float/2addr v10, v6

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, p0, v8

    .line 7
    aget v8, p0, v8

    add-float/2addr v7, v8

    if-lt v9, v5, :cond_4e

    goto :goto_50

    :cond_4e
    move v8, v9

    goto :goto_3b

    :cond_50
    :goto_50
    if-ge v1, v5, :cond_5e

    :goto_52
    add-int/lit8 v6, v1, 0x1

    .line 8
    aget v8, p0, v1

    div-float/2addr v8, v7

    aput v8, p0, v1
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_64

    if-lt v6, v5, :cond_5c

    goto :goto_5e

    :cond_5c
    move v1, v6

    goto :goto_52

    :cond_5e
    :goto_5e
    if-lt v4, v2, :cond_61

    goto :goto_63

    :cond_61
    move v1, v4

    goto :goto_1e

    :cond_63
    :goto_63
    return-void

    :catchall_64
    move-exception p0

    .line 9
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final transpose2D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 14

    const-class v0, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    const-string v1, "x"

    invoke-static {p0, v1}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v3

    const/4 v4, 0x1

    .line 2
    invoke-virtual {p0, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    .line 3
    new-instance v6, Lcom/facebook/appevents/ml/MTensor;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v5, v7, v1

    aput v3, v7, v4

    invoke-direct {v6, v7}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 4
    invoke-virtual {p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object p0

    .line 5
    invoke-virtual {v6}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v4

    if-lez v3, :cond_4b

    const/4 v7, 0x0

    :goto_30
    add-int/lit8 v8, v7, 0x1

    if-lez v5, :cond_46

    const/4 v9, 0x0

    :goto_35
    add-int/lit8 v10, v9, 0x1

    mul-int v11, v9, v3

    add-int/2addr v11, v7

    mul-int v12, v7, v5

    add-int/2addr v12, v9

    .line 6
    aget v9, p0, v12

    aput v9, v4, v11
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_4c

    if-lt v10, v5, :cond_44

    goto :goto_46

    :cond_44
    move v9, v10

    goto :goto_35

    :cond_46
    :goto_46
    if-lt v8, v3, :cond_49

    goto :goto_4b

    :cond_49
    move v7, v8

    goto :goto_30

    :cond_4b
    :goto_4b
    return-object v6

    :catchall_4c
    move-exception p0

    .line 7
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final transpose3D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;
    .registers 19

    move-object/from16 v0, p0

    const-class v1, Lcom/facebook/appevents/ml/Operator;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return-object v3

    :cond_c
    :try_start_c
    const-string v2, "x"

    invoke-static {v0, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v2}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v4

    const/4 v5, 0x1

    .line 2
    invoke-virtual {v0, v5}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v6

    const/4 v7, 0x2

    .line 3
    invoke-virtual {v0, v7}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v8

    .line 4
    new-instance v9, Lcom/facebook/appevents/ml/MTensor;

    const/4 v10, 0x3

    new-array v10, v10, [I

    aput v8, v10, v2

    aput v6, v10, v5

    aput v4, v10, v7

    invoke-direct {v9, v10}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v0

    .line 6
    invoke-virtual {v9}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v5

    if-lez v4, :cond_6b

    const/4 v7, 0x0

    :goto_39
    add-int/lit8 v10, v7, 0x1

    if-lez v6, :cond_66

    const/4 v11, 0x0

    :goto_3e
    add-int/lit8 v12, v11, 0x1

    if-lez v8, :cond_61

    const/4 v13, 0x0

    :goto_43
    add-int/lit8 v14, v13, 0x1

    mul-int v15, v13, v4

    mul-int v15, v15, v6

    mul-int v16, v11, v4

    add-int v15, v15, v16

    add-int/2addr v15, v7

    mul-int v16, v7, v6

    mul-int v16, v16, v8

    mul-int v17, v11, v8

    add-int v16, v16, v17

    add-int v16, v16, v13

    .line 7
    aget v13, v0, v16

    aput v13, v5, v15
    :try_end_5c
    .catchall {:try_start_c .. :try_end_5c} :catchall_6c

    if-lt v14, v8, :cond_5f

    goto :goto_61

    :cond_5f
    move v13, v14

    goto :goto_43

    :cond_61
    :goto_61
    if-lt v12, v6, :cond_64

    goto :goto_66

    :cond_64
    move v11, v12

    goto :goto_3e

    :cond_66
    :goto_66
    if-lt v10, v4, :cond_69

    goto :goto_6b

    :cond_69
    move v7, v10

    goto :goto_39

    :cond_6b
    :goto_6b
    return-object v9

    :catchall_6c
    move-exception v0

    .line 8
    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v3
.end method
