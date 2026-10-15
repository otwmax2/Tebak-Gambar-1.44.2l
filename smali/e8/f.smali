###### Class e8.f (e8.f)
.class public Le8/f;
.super Le8/a;


# direct methods
.method public constructor <init>(Le8/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/b$b;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Le8/a;-><init>(Le8/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Ly7/a;->a()Ly7/a;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ly7/a;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx7/k;

    iget-object v2, p0, Le8/a;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Lx7/k;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lx7/k;->k()Lc8/a;

    move-result-object v1

    iget-wide v2, p0, Le8/a;->e:J

    invoke-virtual {v1, p1, v2, v3}, Lc8/a;->d(Ljava/lang/String;J)V

    goto :goto_e

    :cond_30
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Le8/f;->e(Ljava/lang/String;)V

    :cond_9
    invoke-super {p0, p1}, Le8/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected varargs d([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    iget-object p1, p0, Le8/a;->d:Lorg/json/JSONObject;

    iget-object v0, p0, Le8/b;->b:Le8/b$b;

    invoke-interface {v0}, Le8/b$b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, La8/b;->l(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    iget-object p1, p0, Le8/b;->b:Le8/b$b;

    iget-object v0, p0, Le8/a;->d:Lorg/json/JSONObject;

    invoke-interface {p1, v0}, Le8/b$b;->b(Lorg/json/JSONObject;)V

    iget-object p1, p0, Le8/a;->d:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Le8/f;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le8/f;->b(Ljava/lang/String;)V

    return-void
.end method
