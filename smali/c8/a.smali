###### Class c8.a (c8.a)
.class public abstract Lc8/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/a$a;
    }
.end annotation


# instance fields
.field private a:Lb8/b;

.field private b:Lc8/a$a;

.field private c:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lc8/a;->n()V

    new-instance v0, Lb8/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb8/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lc8/a;->a:Lb8/b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public b(F)V
    .registers 4

    invoke-static {}, Ly7/e;->a()Ly7/e;

    move-result-object v0

    invoke-virtual {p0}, Lc8/a;->m()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ly7/e;->c(Landroid/webkit/WebView;F)V

    return-void
.end method

.method c(Landroid/webkit/WebView;)V
    .registers 3

    new-instance v0, Lb8/b;

    invoke-direct {v0, p1}, Lb8/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lc8/a;->a:Lb8/b;

    return-void
.end method

.method public d(Ljava/lang/String;J)V
    .registers 7

    iget-wide v0, p0, Lc8/a;->c:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_15

    sget-object p2, Lc8/a$a;->p:Lc8/a$a;

    iput-object p2, p0, Lc8/a;->b:Lc8/a$a;

    invoke-static {}, Ly7/e;->a()Ly7/e;

    move-result-object p2

    invoke-virtual {p0}, Lc8/a;->m()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ly7/e;->k(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public e(Lx7/b;)V
    .registers 4

    invoke-static {}, Ly7/e;->a()Ly7/e;

    move-result-object v0

    invoke-virtual {p0}, Lc8/a;->m()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Lx7/b;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ly7/e;->h(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public f(Lx7/k;Lx7/c;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/a;->g(Lx7/k;Lx7/c;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected g(Lx7/k;Lx7/c;Lorg/json/JSONObject;)V
    .registers 10

    invoke-virtual {p1}, Lx7/k;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "environment"

    const-string v0, "app"

    invoke-static {v3, p1, v0}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lx7/c;->b()Lx7/d;

    move-result-object p1

    const-string v1, "adSessionType"

    invoke-static {v3, v1, p1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, La8/a;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "deviceInfo"

    invoke-static {v3, v1, p1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "clid"

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "vlid"

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "supports"

    invoke-static {v3, v1, p1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lx7/c;->g()Lx7/i;

    move-result-object v1

    invoke-virtual {v1}, Lx7/i;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerName"

    invoke-static {p1, v4, v1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lx7/c;->g()Lx7/i;

    move-result-object v1

    invoke-virtual {v1}, Lx7/i;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerVersion"

    invoke-static {p1, v4, v1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "omidNativeInfo"

    invoke-static {v3, v1, p1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "libraryVersion"

    const-string v4, "1.3.16-Vungle"

    invoke-static {p1, v1, v4}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ly7/d;->a()Ly7/d;

    move-result-object v1

    invoke-virtual {v1}, Ly7/d;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appId"

    invoke-static {p1, v4, v1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v0, p1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lx7/c;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8d

    invoke-virtual {p2}, Lx7/c;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentUrl"

    invoke-static {v3, v0, p1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8d
    invoke-virtual {p2}, Lx7/c;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9c

    invoke-virtual {p2}, Lx7/c;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "customReferenceData"

    invoke-static {v3, v0, p1}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9c
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lx7/c;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lx7/j;

    invoke-virtual {p2}, Lx7/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lx7/j;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v0, p2}, La8/b;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a9

    :cond_c1
    invoke-static {}, Ly7/e;->a()Ly7/e;

    move-result-object v0

    invoke-virtual {p0}, Lc8/a;->m()Landroid/webkit/WebView;

    move-result-object v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ly7/e;->e(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public h(Z)V
    .registers 4

    invoke-virtual {p0}, Lc8/a;->k()Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_b

    const-string p1, "foregrounded"

    goto :goto_d

    :cond_b
    const-string p1, "backgrounded"

    :goto_d
    invoke-static {}, Ly7/e;->a()Ly7/e;

    move-result-object v0

    invoke-virtual {p0}, Lc8/a;->m()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ly7/e;->l(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lc8/a;->a:Lb8/b;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public j(Ljava/lang/String;J)V
    .registers 7

    iget-wide v0, p0, Lc8/a;->c:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_19

    iget-object p2, p0, Lc8/a;->b:Lc8/a$a;

    sget-object p3, Lc8/a$a;->q:Lc8/a$a;

    if-eq p2, p3, :cond_19

    iput-object p3, p0, Lc8/a;->b:Lc8/a$a;

    invoke-static {}, Ly7/e;->a()Ly7/e;

    move-result-object p2

    invoke-virtual {p0}, Lc8/a;->m()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ly7/e;->k(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public k()Z
    .registers 2

    iget-object v0, p0, Lc8/a;->a:Lb8/b;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public l()V
    .registers 3

    invoke-static {}, Ly7/e;->a()Ly7/e;

    move-result-object v0

    invoke-virtual {p0}, Lc8/a;->m()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly7/e;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public m()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lc8/a;->a:Lb8/b;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public n()V
    .registers 3

    invoke-static {}, La8/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/a;->c:J

    sget-object v0, Lc8/a$a;->o:Lc8/a$a;

    iput-object v0, p0, Lc8/a;->b:Lc8/a$a;

    return-void
.end method

###### Class c8.a.EnumC0096a (c8.a$a)
.class final enum Lc8/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc8/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum o:Lc8/a$a;

.field public static final enum p:Lc8/a$a;

.field public static final enum q:Lc8/a$a;

.field private static final synthetic r:[Lc8/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lc8/a$a;

    const-string v1, "AD_STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc8/a$a;->o:Lc8/a$a;

    new-instance v1, Lc8/a$a;

    const-string v3, "AD_STATE_VISIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc8/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc8/a$a;->p:Lc8/a$a;

    new-instance v3, Lc8/a$a;

    const-string v5, "AD_STATE_NOTVISIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc8/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc8/a$a;->q:Lc8/a$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lc8/a$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lc8/a$a;->r:[Lc8/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc8/a$a;
    .registers 2

    const-class v0, Lc8/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc8/a$a;

    return-object p0
.end method

.method public static values()[Lc8/a$a;
    .registers 1

    sget-object v0, Lc8/a$a;->r:[Lc8/a$a;

    invoke-virtual {v0}, [Lc8/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc8/a$a;

    return-object v0
.end method
