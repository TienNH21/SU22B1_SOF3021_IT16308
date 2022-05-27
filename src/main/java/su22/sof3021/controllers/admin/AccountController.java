package su22.sof3021.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import su22.sof3021.beans.AccountModel;
import su22.sof3021.entities.Account;
import su22.sof3021.repositories.AccountRepository;

@Controller
@RequestMapping("/admin/accounts")
public class AccountController {
	@Autowired
	private AccountRepository accountRepo;
	
	@GetMapping("/create")
	public String create(@ModelAttribute("account") AccountModel acc)
	{
		return "admin/accounts/create";
	}
	
	@PostMapping("/store")
	public String store(AccountModel model)
	{
		// Chuyển đổi model -> entity
		Account a = new Account();
		a.setFullname(model.getFullname());
		a.setEmail(model.getEmail());
		a.setUsername(model.getUsername());
		a.setPassword(model.getPassword());
		a.setPhoto(model.getPhoto());
		a.setAdmin(model.getAdmin());

		this.accountRepo.save(a);
		return "redirect:/admin/accounts/create";
	}
	
	@GetMapping("delete/{id}")
	public String delete(@PathVariable("id") Account account)
	{
		System.out.println(account.getEmail());
//		Account a = this.accountRepo.getById(id);
		this.accountRepo.delete(account);
		return "redirect:/admin/accounts/create";
	}
}
