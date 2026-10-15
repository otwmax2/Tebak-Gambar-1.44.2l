###### Class m3.i (m3.i)
.class Lm3/i;
.super Ljava/lang/Object;
.source "CreationContextFactory.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lv3/a;

.field private final c:Lv3/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lv3/a;Lv3/a;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm3/i;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lm3/i;->b:Lv3/a;

    .line 4
    iput-object p3, p0, Lm3/i;->c:Lv3/a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lm3/h;
    .registers 5

    .line 1
    iget-object v0, p0, Lm3/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lm3/i;->b:Lv3/a;

    iget-object v2, p0, Lm3/i;->c:Lv3/a;

    invoke-static {v0, v1, v2, p1}, Lm3/h;->a(Landroid/content/Context;Lv3/a;Lv3/a;Ljava/lang/String;)Lm3/h;

    move-result-object p1

    return-object p1
.end method
