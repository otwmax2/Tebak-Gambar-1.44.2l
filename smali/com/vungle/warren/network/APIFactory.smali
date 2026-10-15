###### Class com.vungle.warren.network.APIFactory (com.vungle.warren.network.APIFactory)
.class public Lcom/vungle/warren/network/APIFactory;
.super Ljava/lang/Object;
.source "APIFactory.java"


# instance fields
.field private a:Lja/e$a;

.field private b:Lja/t;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lja/e$a;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lja/t;->l(Ljava/lang/String;)Lja/t;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/network/APIFactory;->b:Lja/t;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/network/APIFactory;->a:Lja/e$a;

    .line 4
    invoke-virtual {v0}, Lja/t;->s()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    return-void

    .line 6
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baseUrl must end in /: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createAPI()Lcom/vungle/warren/network/VungleApi;
    .registers 4

    .line 1
    new-instance v0, Lcom/vungle/warren/network/VungleApiImpl;

    iget-object v1, p0, Lcom/vungle/warren/network/APIFactory;->b:Lja/t;

    iget-object v2, p0, Lcom/vungle/warren/network/APIFactory;->a:Lja/e$a;

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/network/VungleApiImpl;-><init>(Lja/t;Lja/e$a;)V

    return-object v0
.end method
