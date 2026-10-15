###### Class r5.i (r5.i)
.class public abstract Lr5/i;
.super Ljava/lang/Object;
.source "RolloutAssignment.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field public static final a:Ld6/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lf6/d;

    invoke-direct {v0}, Lf6/d;-><init>()V

    sget-object v1, Lr5/a;->a:Le6/a;

    .line 2
    invoke-virtual {v0, v1}, Lf6/d;->j(Le6/a;)Lf6/d;

    move-result-object v0

    invoke-virtual {v0}, Lf6/d;->i()Ld6/a;

    move-result-object v0

    sput-object v0, Lr5/i;->a:Ld6/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Lr5/i;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "rolloutId"

    .line 2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "parameterKey"

    .line 3
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "parameterValue"

    .line 4
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "variantId"

    .line 5
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "templateVersion"

    .line 6
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 7
    invoke-static/range {v1 .. v6}, Lr5/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lr5/i;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lr5/i;
    .registers 13

    .line 1
    invoke-static {p2}, Lr5/i;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance p2, Lr5/b;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lr5/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p2
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_d

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_d
    return-object p0
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()J
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public h()Ls5/f0$e$d$e;
    .registers 4

    .line 1
    invoke-static {}, Ls5/f0$e$d$e;->a()Ls5/f0$e$d$e$a;

    move-result-object v0

    .line 2
    invoke-static {}, Ls5/f0$e$d$e$b;->a()Ls5/f0$e$d$e$b$a;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lr5/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/f0$e$d$e$b$a;->c(Ljava/lang/String;)Ls5/f0$e$d$e$b$a;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lr5/i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/f0$e$d$e$b$a;->b(Ljava/lang/String;)Ls5/f0$e$d$e$b$a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ls5/f0$e$d$e$b$a;->a()Ls5/f0$e$d$e$b;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ls5/f0$e$d$e$a;->d(Ls5/f0$e$d$e$b;)Ls5/f0$e$d$e$a;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lr5/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/f0$e$d$e$a;->b(Ljava/lang/String;)Ls5/f0$e$d$e$a;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lr5/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/f0$e$d$e$a;->c(Ljava/lang/String;)Ls5/f0$e$d$e$a;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lr5/i;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ls5/f0$e$d$e$a;->e(J)Ls5/f0$e$d$e$a;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ls5/f0$e$d$e$a;->a()Ls5/f0$e$d$e;

    move-result-object v0

    return-object v0
.end method
