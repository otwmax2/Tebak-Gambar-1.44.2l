###### Class x7.b (x7.b)
.class public Lx7/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lx7/h;

.field private final b:Lx7/h;

.field private final c:Z

.field private final d:Lx7/e;

.field private final e:Lx7/g;


# direct methods
.method private constructor <init>(Lx7/e;Lx7/g;Lx7/h;Lx7/h;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7/b;->d:Lx7/e;

    iput-object p2, p0, Lx7/b;->e:Lx7/g;

    iput-object p3, p0, Lx7/b;->a:Lx7/h;

    if-nez p4, :cond_10

    sget-object p1, Lx7/h;->r:Lx7/h;

    iput-object p1, p0, Lx7/b;->b:Lx7/h;

    goto :goto_12

    :cond_10
    iput-object p4, p0, Lx7/b;->b:Lx7/h;

    :goto_12
    iput-boolean p5, p0, Lx7/b;->c:Z

    return-void
.end method

.method public static a(Lx7/e;Lx7/g;Lx7/h;Lx7/h;Z)Lx7/b;
    .registers 12

    const-string v0, "CreativeType is null"

    invoke-static {p0, v0}, La8/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImpressionType is null"

    invoke-static {p1, v0}, La8/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Impression owner is null"

    invoke-static {p2, v0}, La8/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, La8/e;->e(Lx7/h;Lx7/e;Lx7/g;)V

    new-instance v0, Lx7/b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lx7/b;-><init>(Lx7/e;Lx7/g;Lx7/h;Lx7/h;Z)V

    return-object v0
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lx7/b;->a:Lx7/h;

    const-string v2, "impressionOwner"

    invoke-static {v0, v2, v1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lx7/b;->b:Lx7/h;

    const-string v2, "mediaEventsOwner"

    invoke-static {v0, v2, v1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lx7/b;->d:Lx7/e;

    const-string v2, "creativeType"

    invoke-static {v0, v2, v1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lx7/b;->e:Lx7/g;

    const-string v2, "impressionType"

    invoke-static {v0, v2, v1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lx7/b;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isolateVerificationScripts"

    invoke-static {v0, v2, v1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
