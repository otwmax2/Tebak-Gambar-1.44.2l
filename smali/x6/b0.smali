###### Class x6.b0 (x6.b0)
.class public final Lx6/b0;
.super Ljava/lang/Object;
.source "SessionEvents.kt"


# static fields
.field public static final a:Lx6/b0;

.field private static final b:Ld6/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lx6/b0;

    invoke-direct {v0}, Lx6/b0;-><init>()V

    sput-object v0, Lx6/b0;->a:Lx6/b0;

    .line 1
    new-instance v0, Lf6/d;

    invoke-direct {v0}, Lf6/d;-><init>()V

    .line 2
    sget-object v1, Lx6/c;->a:Le6/a;

    invoke-virtual {v0, v1}, Lf6/d;->j(Le6/a;)Lf6/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lf6/d;->k(Z)Lf6/d;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lf6/d;->i()Ld6/a;

    move-result-object v0

    const-string v1, "JsonDataEncoderBuilder()\u2026lues(true)\n      .build()"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lx6/b0;->b:Ld6/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Ly6/b;)Lx6/d;
    .registers 2

    if-nez p1, :cond_5

    .line 1
    sget-object p1, Lx6/d;->q:Lx6/d;

    goto :goto_10

    .line 2
    :cond_5
    invoke-interface {p1}, Ly6/b;->b()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3
    sget-object p1, Lx6/d;->r:Lx6/d;

    goto :goto_10

    .line 4
    :cond_e
    sget-object p1, Lx6/d;->s:Lx6/d;

    :goto_10
    return-object p1
.end method


# virtual methods
.method public final a(Lb5/g;Lx6/z;Lz6/f;Lx6/u;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lx6/a0;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/g;",
            "Lx6/z;",
            "Lz6/f;",
            "Lx6/u;",
            "Ljava/util/List<",
            "Lx6/u;",
            ">;",
            "Ljava/util/Map<",
            "Ly6/b$a;",
            "+",
            "Ly6/b;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lx6/a0;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    const-string v2, "firebaseApp"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sessionDetails"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sessionsSettings"

    move-object/from16 v5, p3

    invoke-static {v5, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "currentProcessDetails"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "appProcessDetails"

    move-object/from16 v6, p5

    invoke-static {v6, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "subscribers"

    invoke-static {v1, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "firebaseInstallationId"

    move-object/from16 v11, p7

    invoke-static {v11, v2}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lx6/a0;

    .line 2
    sget-object v12, Lx6/j;->q:Lx6/j;

    .line 3
    new-instance v13, Lx6/f0;

    .line 4
    invoke-virtual/range {p2 .. p2}, Lx6/z;->b()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual/range {p2 .. p2}, Lx6/z;->a()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual/range {p2 .. p2}, Lx6/z;->c()I

    move-result v8

    .line 7
    invoke-virtual/range {p2 .. p2}, Lx6/z;->d()J

    move-result-wide v9

    .line 8
    new-instance v14, Lx6/f;

    .line 9
    sget-object v4, Ly6/b$a;->p:Ly6/b$a;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly6/b;

    invoke-direct {v0, v4}, Lx6/b0;->d(Ly6/b;)Lx6/d;

    move-result-object v4

    .line 10
    sget-object v15, Ly6/b$a;->o:Ly6/b$a;

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/b;

    invoke-direct {v0, v1}, Lx6/b0;->d(Ly6/b;)Lx6/d;

    move-result-object v1

    move-object/from16 p4, v2

    .line 11
    invoke-virtual/range {p3 .. p3}, Lz6/f;->b()D

    move-result-wide v2

    .line 12
    invoke-direct {v14, v4, v1, v2, v3}, Lx6/f;-><init>(Lx6/d;Lx6/d;D)V

    move-object v4, v13

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-wide v8, v9

    move-object v10, v14

    .line 13
    invoke-direct/range {v4 .. v11}, Lx6/f0;-><init>(Ljava/lang/String;Ljava/lang/String;IJLx6/f;Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p0 .. p1}, Lx6/b0;->b(Lb5/g;)Lx6/b;

    move-result-object v1

    move-object/from16 v2, p4

    .line 15
    invoke-direct {v2, v12, v13, v1}, Lx6/a0;-><init>(Lx6/j;Lx6/f0;Lx6/b;)V

    return-object v2
.end method

.method public final b(Lb5/g;)Lx6/b;
    .registers 18

    const-string v0, "firebaseApp"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v0

    const-string v2, "firebaseApp.applicationContext"

    invoke-static {v0, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v3, v5, :cond_2c

    .line 5
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    .line 6
    :cond_2c
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_32
    move-object v6, v3

    .line 7
    new-instance v14, Lx6/b;

    .line 8
    invoke-virtual/range {p1 .. p1}, Lb5/g;->p()Lb5/q;

    move-result-object v3

    invoke-virtual {v3}, Lb5/q;->c()Ljava/lang/String;

    move-result-object v10

    const-string v3, "firebaseApp.options.applicationId"

    invoke-static {v10, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MODEL"

    invoke-static {v11, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "RELEASE"

    invoke-static {v12, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v13, Lx6/t;->s:Lx6/t;

    .line 12
    new-instance v15, Lx6/a;

    const-string v3, "packageName"

    .line 13
    invoke-static {v4, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_5f

    move-object v5, v6

    goto :goto_60

    :cond_5f
    move-object v5, v0

    .line 15
    :goto_60
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "MANUFACTURER"

    invoke-static {v7, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lx6/v;->a:Lx6/v;

    invoke-virtual/range {p1 .. p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lx6/v;->d(Landroid/content/Context;)Lx6/u;

    move-result-object v8

    .line 17
    invoke-virtual/range {p1 .. p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lx6/v;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    move-object v3, v15

    .line 18
    invoke-direct/range {v3 .. v9}, Lx6/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx6/u;Ljava/util/List;)V

    const-string v0, "1.2.0"

    move-object v7, v14

    move-object v8, v10

    move-object v9, v11

    move-object v10, v0

    move-object v11, v12

    move-object v12, v13

    move-object v13, v15

    .line 19
    invoke-direct/range {v7 .. v13}, Lx6/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx6/t;Lx6/a;)V

    return-object v14
.end method

.method public final c()Ld6/a;
    .registers 2

    .line 1
    sget-object v0, Lx6/b0;->b:Ld6/a;

    return-object v0
.end method
