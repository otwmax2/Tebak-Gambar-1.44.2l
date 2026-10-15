###### Class d8.c (d8.c)
.class public Ld8/c;
.super Ljava/lang/Object;

# interfaces
.implements Le8/b$b;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private final b:Le8/c;


# direct methods
.method public constructor <init>(Le8/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld8/c;->b:Le8/c;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Ld8/c;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Ld8/c;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Ld8/c;->b:Le8/c;

    new-instance v1, Le8/d;

    invoke-direct {v1, p0}, Le8/d;-><init>(Le8/b$b;)V

    invoke-virtual {v0, v1}, Le8/c;->c(Le8/b;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Ld8/c;->b:Le8/c;

    new-instance v7, Le8/f;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Le8/f;-><init>(Le8/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Le8/c;->c(Le8/b;)V

    return-void
.end method

.method public e(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Ld8/c;->b:Le8/c;

    new-instance v7, Le8/e;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Le8/e;-><init>(Le8/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Le8/c;->c(Le8/b;)V

    return-void
.end method
