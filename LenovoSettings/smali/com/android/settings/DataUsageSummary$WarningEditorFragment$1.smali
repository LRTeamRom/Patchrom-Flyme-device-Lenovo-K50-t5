.class Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment;

.field final synthetic val$bytesPicker:Landroid/widget/NumberPicker;

.field final synthetic val$editor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

.field final synthetic val$target:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

.field final synthetic val$template:Landroid/net/NetworkTemplate;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment;Landroid/widget/NumberPicker;Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;Landroid/net/NetworkTemplate;Lcom/flyme/deviceoriginalsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 2007
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    iput-object p5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2012
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 2014
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment$1;->val$bytesPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x100000

    mul-long v0, v2, v4

    .line 2015
    .local v0, "bytes":J
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment$1;->val$editor:Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment$1;->val$template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v0, v1}, Lcom/flyme/deviceoriginalsettings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 2016
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$WarningEditorFragment$1;->val$target:Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    const/4 v3, 0x0

    # invokes: Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;->access$800(Lcom/flyme/deviceoriginalsettings/DataUsageSummary;Z)V

    .line 2017
    return-void
.end method
