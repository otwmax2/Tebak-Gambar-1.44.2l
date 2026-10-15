###### Class q5.m (q5.m)
.class public Lq5/m;
.super Ljava/lang/Object;
.source "CrashlyticsAppQualitySessionsSubscriber.java"

# interfaces
.implements Ly6/b;


# instance fields
.field private final a:Lq5/x;

.field private final b:Lq5/l;


# direct methods
.method public constructor <init>(Lq5/x;Lv5/f;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq5/m;->a:Lq5/x;

    .line 3
    new-instance p1, Lq5/l;

    invoke-direct {p1, p2}, Lq5/l;-><init>(Lv5/f;)V

    iput-object p1, p0, Lq5/m;->b:Lq5/l;

    return-void
.end method


# virtual methods
.method public a(Ly6/b$b;)V
    .registers 5

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Quality Sessions session changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lq5/m;->b:Lq5/l;

    invoke-virtual {p1}, Ly6/b$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lq5/l;->h(Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lq5/m;->a:Lq5/x;

    invoke-virtual {v0}, Lq5/x;->d()Z

    move-result v0

    return v0
.end method

.method public c()Ly6/b$a;
    .registers 2

    .line 1
    sget-object v0, Ly6/b$a;->o:Ly6/b$a;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lq5/m;->b:Lq5/l;

    invoke-virtual {v0, p1}, Lq5/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq5/m;->b:Lq5/l;

    invoke-virtual {v0, p1}, Lq5/l;->i(Ljava/lang/String;)V

    return-void
.end method
