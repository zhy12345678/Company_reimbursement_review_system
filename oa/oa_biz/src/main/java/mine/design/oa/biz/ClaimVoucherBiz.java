package mine.design.oa.biz;

import mine.design.oa.entity.ClaimVoucher;
import mine.design.oa.entity.ClaimVoucherItem;
import mine.design.oa.entity.DealRecord;

import java.util.List;

public interface ClaimVoucherBiz {
    void save(ClaimVoucher claimVoucher, List<ClaimVoucherItem> items);
    ClaimVoucher get(int id);
    List<ClaimVoucherItem> getItems(int cvid);
    List<DealRecord> getRecords(int cvid);

    List<ClaimVoucher> getForSelf(String sn);
    List<ClaimVoucher> getForDeal(String sn);


    void update(ClaimVoucher claimVoucher, List<ClaimVoucherItem> items);
    void submit(int id);
    void deal(DealRecord dealRecord);


}
