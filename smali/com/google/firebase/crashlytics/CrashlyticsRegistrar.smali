###### Class com.google.firebase.crashlytics.CrashlyticsRegistrar (com.google.firebase.crashlytics.CrashlyticsRegistrar)
.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;
.source "CrashlyticsRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget-object v0, Ly6/a;->a:Ly6/a;

    sget-object v1, Ly6/b$a;->o:Ly6/b$a;

    invoke-virtual {v0, v1}, Ly6/a;->a(Ly6/b$a;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;Lk5/e;)Lcom/google/firebase/crashlytics/a;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b(Lk5/e;)Lcom/google/firebase/crashlytics/a;

    move-result-object p0

    return-object p0
.end method

.method private b(Lk5/e;)Lcom/google/firebase/crashlytics/a;
    .registers 7

    .line 1
    const-class v0, Lb5/g;

    invoke-interface {p1, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/g;

    .line 2
    const-class v1, Ln5/a;

    .line 3
    invoke-interface {p1, v1}, Lk5/e;->i(Ljava/lang/Class;)Lk6/a;

    move-result-object v1

    .line 4
    const-class v2, Le5/a;

    .line 5
    invoke-interface {p1, v2}, Lk5/e;->i(Ljava/lang/Class;)Lk6/a;

    move-result-object v2

    .line 6
    const-class v3, Ll6/e;

    invoke-interface {p1, v3}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll6/e;

    .line 7
    const-class v4, Lv6/a;

    .line 8
    invoke-interface {p1, v4}, Lk5/e;->i(Ljava/lang/Class;)Lk6/a;

    move-result-object p1

    .line 9
    invoke-static {v0, v3, v1, v2, p1}, Lcom/google/firebase/crashlytics/a;->b(Lb5/g;Ll6/e;Lk6/a;Lk6/a;Lk6/a;)Lcom/google/firebase/crashlytics/a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk5/c;

    .line 1
    const-class v1, Lcom/google/firebase/crashlytics/a;

    .line 2
    invoke-static {v1}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-string v2, "fire-cls"

    .line 3
    invoke-virtual {v1, v2}, Lk5/c$b;->h(Ljava/lang/String;)Lk5/c$b;

    move-result-object v1

    const-class v3, Lb5/g;

    .line 4
    invoke-static {v3}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v3, Ll6/e;

    .line 5
    invoke-static {v3}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v3, Ln5/a;

    .line 6
    invoke-static {v3}, Lk5/r;->a(Ljava/lang/Class;)Lk5/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v3, Le5/a;

    .line 7
    invoke-static {v3}, Lk5/r;->a(Ljava/lang/Class;)Lk5/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v3, Lv6/a;

    .line 8
    invoke-static {v3}, Lk5/r;->a(Ljava/lang/Class;)Lk5/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    new-instance v3, Lm5/f;

    invoke-direct {v3, p0}, Lm5/f;-><init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V

    .line 9
    invoke-virtual {v1, v3}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lk5/c$b;->e()Lk5/c$b;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "18.6.0"

    .line 12
    invoke-static {v2, v1}, Lt6/h;->b(Ljava/lang/String;Ljava/lang/String;)Lk5/c;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class m5.f (m5.f)
.class public final synthetic Lm5/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# instance fields
.field public final synthetic a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/f;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lm5/f;->a:Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;Lk5/e;)Lcom/google/firebase/crashlytics/a;

    move-result-object p1

    return-object p1
.end method
