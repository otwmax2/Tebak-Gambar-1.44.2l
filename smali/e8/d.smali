###### Class e8.d (e8.d)
.class public Le8/d;
.super Le8/b;


# direct methods
.method public constructor <init>(Le8/b$b;)V
    .registers 2

    invoke-direct {p0, p1}, Le8/b;-><init>(Le8/b$b;)V

    return-void
.end method


# virtual methods
.method protected varargs d([Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    iget-object p1, p0, Le8/b;->b:Le8/b$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le8/b$b;->b(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Le8/d;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
